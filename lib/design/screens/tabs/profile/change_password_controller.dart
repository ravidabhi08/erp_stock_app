import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {

   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  RxBool isChanging = false.obs;
  RxBool obscureCurrentPassword = true.obs;
  RxBool obscureNewPassword = true.obs;
  FocusNode currentPasswordNode = FocusNode();
  FocusNode newPasswordNode = FocusNode();

}
