import 'dart:math' as math;

import 'package:erp_stocks/design/screens/tabs/home/home_view.dart';
import 'package:erp_stocks/design/screens/tabs/profile/profile_view.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_view.dart';
import 'package:erp_stocks/design/screens/tabs/stock_entry/stock_entry_view.dart';
import 'package:erp_stocks/design/screens/translation_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../components/ess_components.dart';
import '../utils/design_utils.dart';
import 'main_controller.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  OverlayEntry? overlayEntry;
  final layerLink = LayerLink();

  @override
  void dispose() {
    overlayEntry?.dispose();
    super.dispose();
  }

  Widget createOverlayContent() {
    return UnconstrainedBox(
      child: CompositedTransformFollower(
        link: layerLink,
        showWhenUnlinked: false,
        offset: const Offset(0, -10),
        targetAnchor: Alignment.topCenter,
        followerAnchor: Alignment.bottomCenter,
        child: _FloatingButtonActions(hideActions),
      ),
    );
  }

  void showActions() {
    setState(() {
      overlayEntry = OverlayEntry(builder: (BuildContext context) => createOverlayContent());
      Overlay.of(context).insert(overlayEntry!);
    });
  }

  void hideActions() {
    setState(() {
      overlayEntry?.remove();
      overlayEntry = null;
    });
  }

  bool isOverlayVisible(OverlayEntry? entry) => entry != null;

  @override
  Widget build(BuildContext context) {
    return GetX<MainController>(
      builder: (controller) {
        // final showTaskManagement =
        //     controller.shouldShowFeature(controller.showTaskManagement.isTrue);
        // final showEvents = controller.shouldShowFeature(controller.showEvents.isTrue);
        // final showFeedManagement =
        //     controller.shouldShowFeature(controller.showFeedManagement.isTrue);

        return Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              WillPopScope(
                onWillPop: () async {
                  if (controller.selectedTabIndex.value == 0) return true;
                  controller.pageController.jumpToPage(0);
                  controller.selectedTabIndex.value = 0;
                  controller.update();
                  return false;
                },
                child:
                    controller.isLoading.isTrue
                        ? Center(child: selectImage(AppGifs.sync, width: 50))
                        : PageView(
                          physics: neverScrollablePhysics,
                          controller: controller.pageController,
                          onPageChanged: controller.onPageChanged,
                          children: [
                            const HomeView(),
                            const StockView(),
                            const StockEntryView(),
                            // if (showTaskManagement)
                            //   controller.showTaskManagement.isTrue
                            //       ? const TasksListView(showCreateButton: false)
                            //       : const PremiumFeatures(showInBottomSheet: false),
                            // if (showEvents || showFeedManagement) const UpcomingActivityView(),
                            const ProfileView(),
                          ],
                        ),
              ),
              if (overlayEntry != null)
                GestureDetector(
                  onTap: hideActions,
                  child: Container(decoration: BoxDecoration(color: Colors.black54.hardcodedColor)),
                ),
            ],
          ),
          floatingActionButtonLocation: switch ((
            // showTaskManagement,
            // showEvents || showFeedManagement
          )) {
            (true, false) || (false, true) => FloatingActionButtonLocation.centerFloat,
            _ => FloatingActionButtonLocation.centerDocked,
          },
          floatingActionButton: switch (controller.isLoading.isTrue) {
            true => const SizedBox.shrink(),
            false => CompositedTransformTarget(
              link: layerLink,
              child: _FloatingCircularButton(
                hideActions: hideActions,
                showActions: showActions,
                isOverlayVisible: () => isOverlayVisible(overlayEntry),
              ),
            ),
          },
          bottomNavigationBar: switch (controller.isLoading.isTrue) {
            true => const SizedBox.shrink(),
            false => const _NavigationBar(),
          },
        );
      },
    );
  }
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
}

class _FloatingCircularButton extends StatefulWidget {
  final VoidCallback hideActions;
  final VoidCallback showActions;
  final Function() isOverlayVisible;

  const _FloatingCircularButton({
    required this.hideActions,
    required this.showActions,
    required this.isOverlayVisible,
  });

  @override
  State<_FloatingCircularButton> createState() => _FloatingCircularButtonState();
}

class _FloatingCircularButtonState extends State<_FloatingCircularButton> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return FloatingActionButton(
          elevation: 3,
          shape: CircleBorder(
            side:
                widget.isOverlayVisible()
                    ? BorderSide(color: context.colorScheme.error)
                    : BorderSide.none,
          ),
          backgroundColor:
              widget.isOverlayVisible()
                  ? context
                      .colorScheme
                      .surface //
                  : context.colorScheme.primary,
          onPressed: () {
            setState(() {
              if (widget.isOverlayVisible()) {
                widget.hideActions();
                // ESSFirebaseAnalytics().onClick(name: "speed_dial_close");
              } else {
                widget.showActions();
                // ESSFirebaseAnalytics().onClick(name: "speed_dial_open");
              }
            });
          },
          child:
              widget.isOverlayVisible()
                  ? Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: UnconstrainedBox(
                      child: SvgPicture.asset(
                        AppIcons.plusBold,
                        colorFilter: ColorFilter.mode(context.colorScheme.error, BlendMode.srcIn),
                      ),
                    ),
                  )
                  : UnconstrainedBox(
                    child: SvgPicture.asset(
                      AppIcons.plusBold,
                      colorFilter: ColorFilter.mode(context.colorScheme.onPrimary, BlendMode.srcIn),
                    ),
                  ),
        );
      },
    );
  }
}

class _FloatingButtonActions extends StatelessWidget {
  final VoidCallback hideActions;
  const _FloatingButtonActions(this.hideActions);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        final featuresList = [
          // if (controller.shouldShowFeature(controller.showExpenseManagement.value))
          // _FloatingCircularButtonTargetItem(
          //   showFeature: true,
          //   icon: AppLinealColorIcons.expense,
          //   title: TranslationController.td.applyExpense,
          //   onTap: () {
          //     hideActions();
          //     // Get.toNamed(Routes.APPLY_EXPENSE);
          //   },
          // ),
          // if (controller.shouldShowFeature(controller.showLeaveManagement.value))
          // _FloatingCircularButtonTargetItem(
          //   showFeature: true,
          //   icon: AppLinealColorIcons.leave,
          //   onTap: () {
          //     hideActions();
          //     // Get.toNamed(Routes.APPLY_LEAVE());
          //   },
          //   title: TranslationController.td.applyLeave,
          // ),
          // if (controller.shouldShowFeature(controller.showOrders.value))
          // _FloatingCircularButtonTargetItem(
          //   icon: AppLinealColorIcons.order,
          //   showFeature: true,
          //   title: TranslationController.td.createOrder,
          //   onTap: () {
          //     hideActions();
          //     // controller.showOrders.isTrue
          //     //     ? Get.toNamed(Routes.CREATE_ORDER)
          //     //     : DesignUtils.showPremiumFeatureSheet(context: context);
          //   },
          // ),
          // if (controller.shouldShowFeature(controller.showVisit.value))
          // _FloatingCircularButtonTargetItem(
          //   icon: AppLinealColorIcons.visit,
          //   showFeature: true,
          //   title: TranslationController.td.createVisit,
          //   onTap: () {
          //     hideActions();
          //     // controller.showVisit.isTrue
          //     //     ? Get.toNamed(Routes.CREATE_VISIT)
          //     //     : DesignUtils.showPremiumFeatureSheet(context: context);
          //   },
          // ),
          // if (controller.shouldShowFeature(controller.showTaskManagement.value))
          _FloatingCircularButtonTargetItem(
            icon: AppLinealColorIcons.task,
            title: "Create Stock",
            showFeature: true,
            onTap: () {
              hideActions();
              // controller.showTaskManagement.isTrue
              //     ? Get.toNamed(Routes.CREATE_TASK)
              //     : DesignUtils.showPremiumFeatureSheet(context: context);
            },
          ),
          // if (controller.shouldShowFeature(controller.showAccounting.value))
          // _FloatingCircularButtonTargetItem(
          //   icon: AppLinealColorIcons.paymentEntry,
          //   title: TranslationController.td.paymentEntry,
          //   showFeature: true,
          //   onTap: () {
          //     hideActions();
          //     // controller.showAccounting.isTrue
          //     //     ? Get.toNamed(Routes.CREATE_PAYMENT_ENTRY)
          //     //     : DesignUtils.showPremiumFeatureSheet(context: context);
          //   },
          // ),
          // if (controller.shouldShowFeature(controller.showPettyExpenses.value))
          // _FloatingCircularButtonTargetItem(
          //   icon: AppLinealColorIcons.pettyExpense,
          //   title: TranslationController.td.pettyExpense,
          //   showFeature: true,
          //   onTap: () {
          //     hideActions();
          //     // controller.showPettyExpenses.isTrue
          //     //     ? Get.toNamed(Routes.CREATE_PETTY_ENTRY)
          //     //     : DesignUtils.showPremiumFeatureSheet(context: context);
          //   },
          // ),
        ];
        return Material(
          color: Colors.transparent,
          child: Container(
            width: 200,
            height: math.min(55 * featuresList.length.toDouble(), 400),
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                  color: context.appColors.shadowColor.withOpacity(.06),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: ListView.separated(
                itemCount: featuresList.length,
                padding: const EdgeInsets.symmetric(vertical: 12),
                itemBuilder: (context, index) => featuresList[index],
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 24, color: context.appColors.strokeColor);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _FloatingCircularButtonTargetItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool showFeature;
  final VoidCallback? onTap;

  const _FloatingCircularButtonTargetItem({
    this.onTap,
    required this.icon,
    required this.title,
    required this.showFeature,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color:
                  context.theme.brightness == Brightness.dark
                      ? context
                          .colorScheme
                          .onBackground //
                      : null,
            ),
            const SizedBox(width: 8),
            Expanded(child: CText(title, style: TextThemeX().text14.copyWith(letterSpacing: 0))),
            const SizedBox(width: 8),
            showFeature
                ? SvgPicture.asset(
                  AppIcons.chevronRight,
                  matchTextDirection: true,
                  color: context.appColors.iconColor,
                )
                : Image.asset(AppImages.diamond, width: 22, matchTextDirection: true),
          ],
        ),
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar();

  @override
  Widget build(BuildContext context) {
    int index = 0;
    const ditchWidth = 125.0;

    return GetBuilder<MainController>(
      builder: (controller) {
        // final isExpired = controller.isExpired.isTrue;

        // final showTaskManagement =
        //     controller.shouldShowFeature(controller.showTaskManagement.isTrue);
        // final showEvents = controller.shouldShowFeature(controller.showEvents.isTrue);
        // final showFeedManagement =
        //     controller.shouldShowFeature(controller.showFeedManagement.isTrue);

        // final totalIcons =
        //     2 + (showTaskManagement ? 1 : 0) + (showEvents || showFeedManagement ? 1 : 0);

        return Container(
          decoration: ShapeDecoration(
            shape: const _DitchShapeBorder(ditchWidth: ditchWidth),
            color: context.colorScheme.surface,
            shadows: [
              BoxShadow(
                blurRadius: 10,
                offset: const Offset(4, 0),
                color: context.appColors.shadowColor.withOpacity(.2),
              ),
            ],
          ),
          child: SafeArea(
            minimum: const EdgeInsets.fromLTRB(8, 4, 8, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //? 1
                _NavigationBarIcon(
                  index: index++,
                  title: TranslationController.td.home,
                  selectedIcon: AppNavBarIcons.homeFilled,
                  unselectedIcon: AppNavBarIcons.homeOutlined,
                ),
                //? 2
                // if (showTaskManagement)
                _NavigationBarIcon(
                  index: index++,
                  title: TranslationController.td.stock,
                  selectedIcon: AppNavBarIcons.taskFilled,
                  unselectedIcon: AppNavBarIcons.taskOutlined,
                ),
                //
                // if (showTaskManagement && (showEvents || showFeedManagement))
                const SizedBox(width: ditchWidth - 75),
                //? 3
                // if (showEvents || showFeedManagement)
                _NavigationBarIcon(
                  index: index++,
                  title: TranslationController.td.stockEntry,
                  selectedIcon: AppNavBarIcons.gridFilled,
                  unselectedIcon: AppNavBarIcons.gridOutlined,
                ),
                //? 4
                _NavigationBarIcon(
                  index: index++,
                  title: TranslationController.td.profile,
                  selectedIcon: AppNavBarIcons.profileFilled,
                  unselectedIcon: AppNavBarIcons.profileOutlined,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _NavigationBarIcon extends GetWidget<MainController> {
  final int index;
  final String title;
  final String selectedIcon;
  final String unselectedIcon;

  const _NavigationBarIcon({
    required this.index,
    required this.title,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = controller.selectedTabIndex.value == index;

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: () {
              controller.pageController.jumpToPage(index);
              controller.selectedTabIndex.value = index;
              controller.update();
            },
            icon: SvgPicture.asset(
              isSelected ? selectedIcon : unselectedIcon,
              colorFilter: ColorFilter.mode(
                isSelected ? context.theme.primaryColor : context.appColors.iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          CText(
            title,
            style: TextThemeX().text14.copyWith(
              fontSize: 12,
              letterSpacing: 0,
              color: isSelected ? null : context.appColors.iconColor,
            ),
          ),
        ],
      );
    });
  }
}

class _DitchShapeBorder extends ShapeBorder {
  final double ditchWidth;
  const _DitchShapeBorder({required this.ditchWidth});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => throw UnimplementedError();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    const borderRadius = 28.0;
    final double localWidth = rect.width;
    final double halfLocalWidth = localWidth / 2;
    final double localHeight = rect.height;
    final double startY = rect.bottomLeft.dy - localHeight;
    final double cutDepth = startY + 35;

    final path =
        Path()
          ..moveTo(0, startY + 20)
          ..arcToPoint(Offset(20, startY), radius: const Radius.circular(borderRadius))
          ..lineTo(halfLocalWidth - ditchWidth / 2, startY)
          ..cubicTo(
            halfLocalWidth - ditchWidth / 4,
            startY,
            halfLocalWidth - ditchWidth / 4,
            cutDepth,
            halfLocalWidth,
            cutDepth,
          )
          ..cubicTo(
            halfLocalWidth + ditchWidth / 4,
            cutDepth,
            halfLocalWidth + ditchWidth / 4,
            startY,
            halfLocalWidth + ditchWidth / 2,
            startY,
          )
          ..lineTo(localWidth - 30, startY)
          ..arcToPoint(Offset(localWidth, startY + 20), radius: const Radius.circular(borderRadius))
          ..lineTo(localWidth, rect.bottom)
          ..lineTo(0, rect.bottom)
          ..close();

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()..color = Colors.transparent;

    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
