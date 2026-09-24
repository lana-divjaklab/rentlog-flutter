import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/push/push_service.dart';

/// Calls [onRefresh] when the app comes back to the foreground or a push
/// arrives while it's open. There is no live Convex subscription on mobile,
/// so these are the moments data can have changed underneath us.
class RefreshOnSignal extends StatefulWidget {
  const RefreshOnSignal({
    required this.onRefresh,
    required this.child,
    super.key,
  });

  final VoidCallback onRefresh;
  final Widget child;

  @override
  State<RefreshOnSignal> createState() => _RefreshOnSignalState();
}

class _RefreshOnSignalState extends State<RefreshOnSignal> {
  late final AppLifecycleListener _lifecycle;
  StreamSubscription<PushMessage>? _push;

  @override
  void initState() {
    super.initState();
    _lifecycle = AppLifecycleListener(onResume: widget.onRefresh);
    _push = context.read<PushService>().received.listen((_) => widget.onRefresh());
  }

  @override
  void dispose() {
    _lifecycle.dispose();
    unawaited(_push?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
