import 'package:erp_stocks/design/screens/tabs/stock_entry/stock_entry_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/ess_components.dart';
import '../../translation_controller.dart';

class StockEntryView extends StatelessWidget {
  const StockEntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StockEntryController>(
      builder: (controller) {
        return Scaffold(
          // backgroundColor: context.colorScheme.surface,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 16,
            title: CText(TranslationController.td.stockEntry),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[CText(TranslationController.td.stockEntry)],
            ),
          ),
        );
      },
    );
  }
}
