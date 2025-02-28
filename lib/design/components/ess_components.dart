import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mentions/flutter_mentions.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '/core/repositories/home_repository.dart';
import '/core/services/gs_services.dart';
import '/core/utils/core_constants.dart';
import '/design/screens/translation_controller.dart';
import '/design/utils/design_utils.dart';
import '/utils/extensions.dart';
import '../screens/tabs/home/home_view.dart';
import 'app_button.dart';
import 'bottom_sheet_container.dart';
import 'html_renderer.dart';
import 'selection_sheet_text_field.dart';

part 'attachment_button.dart';
part 'avatar_image.dart';
part 'bg_blur.dart';
part 'c_core_button.dart';
part 'c_country_picker.dart';
part 'c_fab.dart';
part 'c_pagination.dart';
part 'c_pull_down_button.dart';
part 'c_radio_button_tile.dart';
part 'c_select_date.dart';
part 'c_selection_sheet.dart';
part 'c_text.dart';
part 'c_text_field.dart';
part 'comments_list_view.dart';
part 'shimmer_placeholder.dart';
part 'unfocus_wrapper.dart';
part 'view_all_row.dart';
part 'year_month_filter.dart';

class TitleValueColumn extends StatelessWidget {
  final String? title;
  final String? value;
  const TitleValueColumn({super.key, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          title ?? na,
          style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
        ),
        CText(
          value ?? na,
          style: TextThemeX().text14.copyWith(
                color: context.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.visible,
              ),
        ),
      ],
    );
  }
}
