// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'RentLOG';

  @override
  String get retry => 'Try again';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get genericError => 'Something went wrong. Please try again.';

  @override
  String get networkError => 'No connection. Check your internet and try again.';

  @override
  String get notInPlan => 'This isn\'t included in your current plan.';

  @override
  String get sessionExpired => 'You were signed out. Please sign in again.';

  @override
  String get openOnWeb => 'Open on web';

  @override
  String get openOnWebHint => 'More options are available in the web app.';

  @override
  String get signInTitle => 'Sign in';

  @override
  String get signInSubtitle => 'Enter your email and we\'ll send you a sign-in code.';

  @override
  String get emailLabel => 'Email';

  @override
  String get sendCode => 'Send code';

  @override
  String get invalidEmail => 'Enter a valid email address.';

  @override
  String get codeTitle => 'Check your email';

  @override
  String codeSubtitle(String email) {
    return 'We sent a 6-digit code to $email.';
  }

  @override
  String get codeLabel => 'Code';

  @override
  String get verify => 'Continue';

  @override
  String get resendCode => 'Send a new code';

  @override
  String get codeResent => 'New code sent.';

  @override
  String get useDifferentEmail => 'Use a different email';

  @override
  String get invalidCode => 'That code isn\'t right. Check it and try again.';

  @override
  String get noAccountPrompt => 'New to RentLOG?';

  @override
  String get createAccount => 'Create account';

  @override
  String get haveAccountPrompt => 'Already have an account?';

  @override
  String get signUpTitle => 'Create account';

  @override
  String get signUpSubtitle => 'We\'ll email you a code to confirm your address.';

  @override
  String get firstNameLabel => 'First name';

  @override
  String get lastNameLabel => 'Last name';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'At least 8 characters.';

  @override
  String get acceptTermsPrefix => 'I agree to the ';

  @override
  String get termsLink => 'Terms';

  @override
  String get acceptTermsAnd => ' and ';

  @override
  String get privacyLink => 'Privacy Policy';

  @override
  String get fieldRequired => 'Required.';

  @override
  String get mustAcceptTerms => 'Please accept the terms to continue.';

  @override
  String get noAccountForEmail => 'There\'s no account for this email yet. Create one?';

  @override
  String get accountExists => 'An account with this email already exists. Sign in instead.';

  @override
  String get passwordTooShort => 'The password must be at least 8 characters.';

  @override
  String get passwordPwned => 'This password has appeared in a data breach. Choose another one.';

  @override
  String get signUpBlocked => 'Sign-up from the app is blocked right now. Create your account on rent-log.app and sign in here.';

  @override
  String get onboardingTitle => 'Welcome to RentLOG';

  @override
  String get onboardingSubtitle => 'What would you like to do?';

  @override
  String get onboardingTenant => 'I have an invite code';

  @override
  String get onboardingTenantHint => 'Your landlord gave you an 8-character code.';

  @override
  String get onboardingLandlord => 'I rent out property';

  @override
  String get onboardingLandlordHint => 'Track rent, costs and payments.';

  @override
  String get inviteTitle => 'Enter invite code';

  @override
  String get inviteLabel => 'Invite code';

  @override
  String get inviteCheck => 'Check code';

  @override
  String get inviteJoin => 'Join';

  @override
  String inviteFor(String tenant) {
    return 'Lease for $tenant';
  }

  @override
  String get inviteInvalid => 'This code isn\'t valid.';

  @override
  String get inviteRevoked => 'This code was revoked. Ask your landlord for a new one.';

  @override
  String get inviteUsed => 'This code has already been used.';

  @override
  String get navHome => 'Home';

  @override
  String get navDocuments => 'Documents';

  @override
  String get navSettings => 'Settings';

  @override
  String get navOverview => 'Overview';

  @override
  String get navLeases => 'Leases';

  @override
  String get navProperties => 'Properties';

  @override
  String get monthlyRent => 'Monthly rent';

  @override
  String get deposit => 'Deposit';

  @override
  String get history => 'History';

  @override
  String get rent => 'Rent';

  @override
  String costsForMonth(String month) {
    return 'Costs for $month';
  }

  @override
  String get total => 'Total';

  @override
  String creditCarried(String month) {
    return 'Overpayment from $month';
  }

  @override
  String debtCarried(String month) {
    return 'Underpayment from $month';
  }

  @override
  String get payableTotal => 'To pay';

  @override
  String get statusPaid => 'Paid';

  @override
  String get statusOverdue => 'Overdue';

  @override
  String get statusDue => 'Due';

  @override
  String delayRent(int days) {
    return 'Rent +$days days';
  }

  @override
  String delayUtilities(int days) {
    return 'Utilities +$days days';
  }

  @override
  String dueOn(String date) {
    return 'Due $date';
  }

  @override
  String paidOn(String date) {
    return 'Paid $date';
  }

  @override
  String get noLease => 'You\'re not connected to a lease yet. Ask your landlord for an invite code.';

  @override
  String get enterInviteCode => 'Enter invite code';

  @override
  String get noCharges => 'No charges yet.';

  @override
  String get chooseLease => 'Choose a lease';

  @override
  String get meters => 'Meters';

  @override
  String get meterReading => 'Reading';

  @override
  String get meterUsage => 'Usage';

  @override
  String get documentsEmpty => 'Your landlord hasn\'t shared any documents yet.';

  @override
  String get documentUnavailable => 'This document is no longer available.';

  @override
  String get dashRentThisMonth => 'Rent this month';

  @override
  String get dashUtilitiesThisMonth => 'Utilities this month';

  @override
  String get dashOverdue => 'Overdue';

  @override
  String dashOverdueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String dashExpectedRent(String amount) {
    return 'Expected $amount/mo';
  }

  @override
  String dashCollectedYear(String year) {
    return 'Collected $year';
  }

  @override
  String get dashNeedsAttention => 'Needs attention';

  @override
  String get dashAllClear => 'Nothing overdue or due right now.';

  @override
  String dashLeaseOverdue(String amount) {
    return 'Overdue $amount';
  }

  @override
  String get dashLeaseOk => 'No overdue';

  @override
  String get leasesEmpty => 'No leases yet. Add your first one in the web app.';

  @override
  String get leaseStatusActive => 'Active';

  @override
  String get leaseStatusDraft => 'Draft';

  @override
  String get leaseStatusEnded => 'Ended';

  @override
  String unpaidTotal(String amount) {
    return 'Unpaid $amount';
  }

  @override
  String get propertiesEmpty => 'No properties yet. Add them in the web app.';

  @override
  String unitsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count units',
      one: '1 unit',
      zero: 'No units',
    );
    return '$_temp0';
  }

  @override
  String get ownerOccupied => 'Owner-occupied';

  @override
  String get markPaid => 'Mark paid';

  @override
  String get pay => 'Pay';

  @override
  String get paidAmountLabel => 'Paid';

  @override
  String get paidAmountHint => 'Enter the amount actually transferred. Rounding up is deducted from the next month\'s costs.';

  @override
  String get paymentDate => 'Payment date';

  @override
  String get undoPayment => 'Undo payment';

  @override
  String get saveCosts => 'Save costs';

  @override
  String get publishMonth => 'Publish month';

  @override
  String get published => 'Published';

  @override
  String get costsSaved => 'Costs saved.';

  @override
  String get monthPublished => 'Published. Tenants have been notified.';

  @override
  String get enterBillHint => 'Enter the total bill in the web app first.';

  @override
  String get billShort => 'Bill';

  @override
  String get tenantUsage => 'Tenant usage';

  @override
  String get amount => 'Amount';

  @override
  String get allocationConsumption => 'By consumption';

  @override
  String get allocationFixed => 'Fixed';

  @override
  String get allocationPercentage => 'Percentage';

  @override
  String get allocationBillMinusFixed => 'Bill minus fixed';

  @override
  String get allocationManual => 'Manual';

  @override
  String creditForward(String amount) {
    return 'Carried forward: $amount';
  }

  @override
  String debtForward(String amount) {
    return 'Owed forward: $amount';
  }

  @override
  String get noRules => 'No cost rules on this lease. Add them in the web app.';

  @override
  String get rentAmount => 'Rent amount';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get languageSystem => 'Phone default';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get notificationsOn => 'On';

  @override
  String get notificationsOff => 'Off. Turn them on in your phone\'s settings.';

  @override
  String get settingsSubscription => 'Subscription';

  @override
  String get planFree => 'Free';

  @override
  String get planPro => 'Pro';

  @override
  String get planBusiness => 'Business';

  @override
  String get planLegacy => 'Full access';

  @override
  String renewsOn(String date) {
    return 'Renews $date';
  }

  @override
  String usageProperties(int used, String limit) {
    return 'Properties: $used / $limit';
  }

  @override
  String usageLeases(int used, String limit) {
    return 'Leases: $used / $limit';
  }

  @override
  String get openWebApp => 'Open RentLOG on the web';

  @override
  String get switchToTenant => 'Switch to tenant view';

  @override
  String get switchToLandlord => 'Switch to landlord view';

  @override
  String get signOut => 'Sign out';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountTitle => 'Delete your account?';

  @override
  String get deleteAccountBody => 'Your access to leases is removed right away. Properties and leases you own are permanently deleted after 30 days. Sign in again before then to cancel.';

  @override
  String get deleteAccountConfirm => 'Delete';

  @override
  String deletionScheduled(String date) {
    return 'Your account is scheduled for deletion on $date.';
  }

  @override
  String get cancelDeletion => 'Keep my account';

  @override
  String appVersion(String version) {
    return 'Version $version';
  }

  @override
  String get notificationChannelName => 'Charges and reminders';

  @override
  String get notificationChannelDescription => 'New costs to pay and rent reminders.';

  @override
  String get defaultOrganizationName => 'My rentals';
}
