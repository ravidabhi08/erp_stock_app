import 'package:erp_stocks/design/components/app_back_button.dart';
import 'package:erp_stocks/design/utils/design_utils.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/ess_components.dart';
import '../../../translation_controller.dart';
import '../profile_controller.dart';

class PersonalDetailsView extends StatelessWidget {
  const PersonalDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();

    final List<(String, String?)> personalDetailsList = [
      (TranslationController.td.dateOfBirth, "18-07-2002"),
      (TranslationController.td.personalEmailAddress, "ravi@gmail.com"),
      (TranslationController.td.gender, "Male"),
      (TranslationController.td.contactNumber, "9638527410"),
      (TranslationController.td.emergencyContactNumber, "9874563210"),
      (TranslationController.td.address, "Goa, India"),
      (TranslationController.td.parentName, "Dabhi"),
      (TranslationController.td.parentContact, "7778071358"),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: CText(TranslationController.td.personalDetails),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          physics: defaultScrollablePhysics,
          child: SafeArea(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: neverScrollablePhysics,
              itemCount: personalDetailsList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CText(
                      personalDetailsList[index].$1,
                      style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                    ),
                    CText(personalDetailsList[index].$2 ?? na, style: TextThemeX().text16.semiBold),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(thickness: 1, color: context.colorScheme.surface, height: 25);
              },
            ).defaultContainer(vM: 16),
          ),
        ),
      ),
    );
  }
}
