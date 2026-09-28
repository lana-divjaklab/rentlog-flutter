import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_details.dart';
import 'package:rentlog/core/widgets/open_on_web_tile.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/features/auth/bloc/auth_flow_bloc.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/l10n/l10n.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => AuthFlowBloc(context.read<AuthRepository>()),
    child: BlocListener<AuthFlowBloc, AuthFlowState>(
      listenWhen: (a, b) => a.user == null && b.user != null,
      listener: (context, state) =>
          context.read<SessionBloc>().add(SessionEvent.signedIn(state.user!)),
      child: const _AuthView(),
    ),
  );
}

class _AuthView extends StatelessWidget {
  const _AuthView();

  @override
  Widget build(BuildContext context) {
    final step = context.select<AuthFlowBloc, AuthStep>((b) => b.state.step);
    final expired = context.select<SessionBloc, bool>(
      (b) => switch (b.state) {
        SessionSignedOut(:final expired) => expired,
        _ => false,
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(child: RlLogo(size: 40)),
                  const SizedBox(height: 40),
                  if (expired && step == AuthStep.email) ...[
                    _Notice(context.l10n.sessionExpired),
                    const SizedBox(height: 16),
                  ],
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: switch (step) {
                      AuthStep.email => const _EmailStep(key: ValueKey('email')),
                      AuthStep.signUp => const _SignUpStep(key: ValueKey('signUp')),
                      AuthStep.code => const _CodeStep(key: ValueKey('code')),
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailStep extends StatefulWidget {
  const _EmailStep({super.key});

  @override
  State<_EmailStep> createState() => _EmailStepState();
}

class _EmailStepState extends State<_EmailStep> {
  late final _email = TextEditingController(
    text: context.read<AuthFlowBloc>().state.email,
  );

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  void _submit() =>
      context.read<AuthFlowBloc>().add(AuthFlowEvent.emailSubmitted(_email.text));

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<AuthFlowBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Heading(title: l10n.signInTitle, subtitle: l10n.signInSubtitle),
        TextField(
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          autocorrect: false,
          textInputAction: TextInputAction.go,
          onSubmitted: (_) => _submit(),
          decoration: InputDecoration(labelText: l10n.emailLabel),
        ),
        if (state.failure != null) ...[
          const SizedBox(height: 12),
          _FailureText(state.failure!, detail: state.failureDetail),
          if (state.failure == AuthFailure.noAccount)
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => context.read<AuthFlowBloc>().add(
                  const AuthFlowEvent.signUpOpened(),
                ),
                child: Text(l10n.createAccount),
              ),
            ),
        ],
        const SizedBox(height: 20),
        _SubmitButton(label: l10n.sendCode, busy: state.busy, onPressed: _submit),
        const SizedBox(height: 24),
        _SwitchPrompt(
          prompt: l10n.noAccountPrompt,
          action: l10n.createAccount,
          onPressed: () => context.read<AuthFlowBloc>().add(
            const AuthFlowEvent.signUpOpened(),
          ),
        ),
      ],
    );
  }
}

class _SignUpStep extends StatefulWidget {
  const _SignUpStep({super.key});

  @override
  State<_SignUpStep> createState() => _SignUpStepState();
}

class _SignUpStepState extends State<_SignUpStep> {
  final _form = GlobalKey<FormState>();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  late final _email = TextEditingController(
    text: context.read<AuthFlowBloc>().state.email,
  );
  final _password = TextEditingController();
  bool _acceptedTerms = false;
  bool _showTermsError = false;
  bool _obscure = true;

  late final TapGestureRecognizer _termsTap = TapGestureRecognizer()
    ..onTap = () => openWeb('/terms');
  late final TapGestureRecognizer _privacyTap = TapGestureRecognizer()
    ..onTap = () => openWeb('/privacy');

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _password.dispose();
    _termsTap.dispose();
    _privacyTap.dispose();
    super.dispose();
  }

  void _submit() {
    final valid = _form.currentState!.validate();
    setState(() => _showTermsError = !_acceptedTerms);
    if (!valid || !_acceptedTerms) return;
    context.read<AuthFlowBloc>().add(
      AuthFlowEvent.signUpSubmitted(
        email: _email.text,
        password: _password.text,
        firstName: _firstName.text,
        lastName: _lastName.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<AuthFlowBloc>().state;
    String? required(String? value) =>
        (value ?? '').trim().isEmpty ? l10n.fieldRequired : null;

    return Form(
      key: _form,
      child: AutofillGroup(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Heading(title: l10n.signUpTitle, subtitle: l10n.signUpSubtitle),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _firstName,
                    autofillHints: const [AutofillHints.givenName],
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    validator: required,
                    decoration: InputDecoration(labelText: l10n.firstNameLabel),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _lastName,
                    autofillHints: const [AutofillHints.familyName],
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    validator: required,
                    decoration: InputDecoration(labelText: l10n.lastNameLabel),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              autocorrect: false,
              textInputAction: TextInputAction.next,
              validator: required,
              decoration: InputDecoration(labelText: l10n.emailLabel),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _password,
              obscureText: _obscure,
              autofillHints: const [AutofillHints.newPassword],
              textInputAction: TextInputAction.done,
              validator: (value) => (value ?? '').length < 8
                  ? l10n.passwordTooShort
                  : null,
              decoration: InputDecoration(
                labelText: l10n.passwordLabel,
                helperText: l10n.passwordHint,
                suffixIcon: IconButton(
                  icon: Icon(_obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                  onPressed: () => setState(() => _obscure = !_obscure),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _acceptedTerms,
                  onChanged: (value) => setState(() {
                    _acceptedTerms = value ?? false;
                    if (_acceptedTerms) _showTermsError = false;
                  }),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(text: l10n.acceptTermsPrefix),
                        TextSpan(
                          text: l10n.termsLink,
                          style: const TextStyle(color: AppColors.primary),
                          recognizer: _termsTap,
                        ),
                        TextSpan(text: l10n.acceptTermsAnd),
                        TextSpan(
                          text: l10n.privacyLink,
                          style: const TextStyle(color: AppColors.primary),
                          recognizer: _privacyTap,
                        ),
                        const TextSpan(text: '.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_showTermsError)
              Text(
                l10n.mustAcceptTerms,
                style: const TextStyle(color: AppColors.destructive, fontSize: 13),
              ),
            if (state.failure != null) ...[
              const SizedBox(height: 12),
              _FailureText(state.failure!, detail: state.failureDetail),
            ],
            const SizedBox(height: 20),
            _SubmitButton(
              label: l10n.createAccount,
              busy: state.busy,
              onPressed: _submit,
            ),
            const SizedBox(height: 24),
            _SwitchPrompt(
              prompt: l10n.haveAccountPrompt,
              action: l10n.signInTitle,
              onPressed: () => context.read<AuthFlowBloc>().add(
                const AuthFlowEvent.backToEmail(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CodeStep extends StatefulWidget {
  const _CodeStep({super.key});

  @override
  State<_CodeStep> createState() => _CodeStepState();
}

class _CodeStepState extends State<_CodeStep> {
  final _code = TextEditingController();

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  void _submit() =>
      context.read<AuthFlowBloc>().add(AuthFlowEvent.codeSubmitted(_code.text));

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<AuthFlowBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Heading(title: l10n.codeTitle, subtitle: l10n.codeSubtitle(state.email)),
        TextField(
          controller: _code,
          autofocus: true,
          keyboardType: TextInputType.number,
          autofillHints: const [AutofillHints.oneTimeCode],
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, letterSpacing: 8),
          onChanged: (value) {
            if (value.length == 6) _submit();
          },
          decoration: InputDecoration(hintText: l10n.codeLabel),
        ),
        if (state.failure != null) ...[
          const SizedBox(height: 12),
          _FailureText(state.failure!, detail: state.failureDetail),
        ],
        if (state.codeResent) ...[
          const SizedBox(height: 12),
          Text(l10n.codeResent, style: const TextStyle(color: AppColors.success)),
        ],
        const SizedBox(height: 20),
        _SubmitButton(label: l10n.verify, busy: state.busy, onPressed: _submit),
        const SizedBox(height: 12),
        TextButton(
          onPressed: state.busy
              ? null
              : () => context.read<AuthFlowBloc>().add(
                  const AuthFlowEvent.resendRequested(),
                ),
          child: Text(l10n.resendCode),
        ),
        TextButton(
          onPressed: () =>
              context.read<AuthFlowBloc>().add(const AuthFlowEvent.backToEmail()),
          child: Text(
            l10n.useDifferentEmail,
            style: const TextStyle(color: AppColors.muted),
          ),
        ),
      ],
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.muted,
          ),
        ),
      ],
    ),
  );
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.label,
    required this.busy,
    required this.onPressed,
  });

  final String label;
  final bool busy;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: busy ? null : onPressed,
    child: busy
        ? const SizedBox.square(
            dimension: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(label),
  );
}

class _SwitchPrompt extends StatelessWidget {
  const _SwitchPrompt({
    required this.prompt,
    required this.action,
    required this.onPressed,
  });

  final String prompt;
  final String action;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(prompt, style: const TextStyle(color: AppColors.muted)),
      TextButton(onPressed: onPressed, child: Text(action)),
    ],
  );
}

class _FailureText extends StatelessWidget {
  const _FailureText(this.failure, {this.detail});

  final AuthFailure failure;
  final String? detail;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final text = switch (failure) {
      AuthFailure.invalidEmail => l10n.invalidEmail,
      AuthFailure.invalidCode => l10n.invalidCode,
      AuthFailure.noAccount => l10n.noAccountForEmail,
      AuthFailure.accountExists => l10n.accountExists,
      AuthFailure.passwordTooShort => l10n.passwordTooShort,
      AuthFailure.passwordPwned => l10n.passwordPwned,
      AuthFailure.signUpBlocked => l10n.signUpBlocked,
      AuthFailure.network => l10n.networkError,
      AuthFailure.unknown => l10n.genericError,
    };
    final message = Text(text, style: const TextStyle(color: AppColors.destructive));
    if (failure != AuthFailure.unknown || detail == null) return message;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [message, ErrorDetails(detail!)],
    );
  }
}

class _Notice extends StatelessWidget {
  const _Notice(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: AppColors.tint(AppColors.warning),
      borderRadius: BorderRadius.circular(AppRadius.md),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Text(text, style: const TextStyle(color: AppColors.warning)),
    ),
  );
}
