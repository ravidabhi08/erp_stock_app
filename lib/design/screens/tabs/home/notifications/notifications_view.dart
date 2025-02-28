import 'package:flutter/material.dart';

import '../../../../components/app_back_button.dart';
import '../../../../components/ess_components.dart';
import '../../../translation_controller.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const AppBackButton(),
        title: CText(TranslationController.td.notifications),
      ),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}
