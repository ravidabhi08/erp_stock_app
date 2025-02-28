part of 'ess_components.dart';

// class CPagedChildBuilderDelegate<T> extends PagedChildBuilderDelegate<T> {
//   CPagedChildBuilderDelegate({
//     double topPadding = 0,
//     String? noItemFoundMessage,
//     required super.itemBuilder,
//     Widget Function(BuildContext)? noItemsFoundIndicatorBuilder,
//   }) : super(
//           noMoreItemsIndicatorBuilder: (ctx) => Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 10, bottom: 10),
//               child: Text(
//                 TranslationController.td.thatsAllYouGot,
//                 style: TextThemeX().text16.copyWith(
//                       // TODO(v2): color
//                       color: ctx.appColors.iconColor,
//                     ),
//               ),
//             ),
//           ),
//           noItemsFoundIndicatorBuilder: noItemsFoundIndicatorBuilder ??
//               (ctx) {
//                 return Align(
//                   alignment: Alignment.topCenter,
//                   child: DesignUtils.noDataAvailableCard(
//                     topPadding: topPadding,
//                     text: noItemFoundMessage ?? TranslationController.td.noItemsFound,
//                   ),
//                 );
//               },
//           newPageProgressIndicatorBuilder: (_) => UnconstrainedBox(child: defaultLoader()),
//           firstPageProgressIndicatorBuilder: (_) => SingleChildScrollView(
//             physics: defaultScrollablePhysics,
//             child: Column(
//               children: List.generate(
//                 6,
//                 (index) => const ContainerPlaceHolder(height: 110),
//               ),
//             ).paddingOnly(top: 14, bottom: 16).showShimmer(),
//           ),
//         );
// }

// class CPagedListView<T> extends StatelessWidget {
//   final double topPadding;
//   final String? noItemFoundMessage;
//   final ScrollController? scrollController;
//   final PagingController<int, T> pagingController;
//   final Widget Function(BuildContext context, T item, int index) itemBuilder;

//   const CPagedListView({
//     super.key,
//     this.scrollController,
//     this.topPadding = 16,
//     this.noItemFoundMessage,
//     required this.itemBuilder,
//     required this.pagingController,
//   }) : _separatorBuilder = null;

//   final IndexedWidgetBuilder? _separatorBuilder;
//   const CPagedListView.seperated({
//     super.key,
//     this.scrollController,
//     this.topPadding = 16,
//     this.noItemFoundMessage,
//     required this.itemBuilder,
//     required this.pagingController,
//     required IndexedWidgetBuilder separatorBuilder,
//   }) : _separatorBuilder = separatorBuilder;

//   @override
//   Widget build(BuildContext context) {
//     final separatorBuilder = _separatorBuilder;

//     return separatorBuilder == null
//         ? PagedListView<int, T>(
//             physics: defaultScrollablePhysics,
//             pagingController: pagingController,
//             scrollController: scrollController,
//             padding: EdgeInsets.only(top: topPadding, bottom: context.bottomPadding + 20),
//             builderDelegate: CPagedChildBuilderDelegate(
//               itemBuilder: itemBuilder,
//               noItemFoundMessage: noItemFoundMessage,
//             ),
//           )
//         : PagedListView<int, T>.separated(
//             physics: defaultScrollablePhysics,
//             pagingController: pagingController,
//             scrollController: scrollController,
//             padding: EdgeInsets.only(top: topPadding, bottom: context.bottomPadding + 20),
//             builderDelegate: CPagedChildBuilderDelegate(
//               itemBuilder: itemBuilder,
//               noItemFoundMessage: noItemFoundMessage,
//             ),
//             separatorBuilder: separatorBuilder,
//           );
//   }
// }

// Future<void> fetchPage<T>({
//   int pageSize = 20,
//   required int pageKey,
//   required FutureOr<List<T>> apiCall,
//   required PagingController<int, T> pagingController,
// }) async {
//   try {
//     List<T> newEntries = await apiCall;
//     final bool isLastPage = newEntries.length < pageSize;
//     if (isLastPage) {
//       pagingController.appendLastPage(newEntries);
//     } else {
//       final nextPageKey = newEntries.length + (pagingController.value.itemList?.length ?? 0);
//       pagingController.appendPage(newEntries, nextPageKey);
//     }
//   } catch (error) {
//     pagingController.error = error;
//   }
// }
