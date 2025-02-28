import 'dart:io';
import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:html/dom.dart' as html_dom;

import '/core/utils/core_constants.dart';
import '/design/components/ess_components.dart';
import '/design/screens/translation_controller.dart';
import '/utils/extensions.dart';
import '../../core/messages/error_messages.dart';
import '../components/app_button.dart';
import '../components/bottom_sheet_container.dart';

part 'app_assets.dart';
part 'app_colors.dart';
part 'app_text_theme.dart';
part 'design_constants.dart';
part 'select_image.dart';
part 'utils.dart';
part 'validators.dart';
