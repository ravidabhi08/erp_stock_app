import 'dart:developer';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

import '/design/utils/design_utils.dart';

class LifeCycleManager extends StatefulWidget {
  final Widget child;
  const LifeCycleManager({super.key, required this.child});

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager> with WidgetsBindingObserver {
  bool canOpen = false;
  bool isOpened = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.paused:
        log('paused...');
        // if (GSServices.getBiometricAuth) {
        //   if (!canOpen) {
        //     EasyDebounce.debounce('biometric_auth', const Duration(seconds: 10), () async {
        //       canOpen = true;
        //     });
        //   }
        // }
      case AppLifecycleState.inactive:
        log('inactive...');
      case AppLifecycleState.detached:
        log('detached...');
      case AppLifecycleState.resumed:
        log('resume...');
        // if (GSServices.getBiometricAuth) {
        //   EasyDebounce.cancel('biometric_auth');
        //   if (canOpen && !isOpened) {
        //     isOpened = true;

        //     final bool? isAuthenticated = await DesignUtils.doBiometricAuth();
        //     if (isAuthenticated == true) {
        //       canOpen = isOpened = false;
        //     }
        //   }
        // }
      case AppLifecycleState.hidden:
        log('hidden...');
      default:
        log('default...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: widget.child);
  }
}
