part of 'ess_components.dart';

// // ignore: must_be_immutable
// class YearMonthFilter extends StatelessWidget {
//   int selectedYear;
//   int selectedMonth;
//   List<int> years;
//   final void Function({int? year, int? month})? onSelected;
//   YearMonthFilter({
//     super.key,
//     this.onSelected,
//     required this.years,
//     required this.selectedYear,
//     required this.selectedMonth,
//   }) {
//     years.sort((a, b) => a.compareTo(b));
//   }

//   List<MonthNameEnum> months = [
//     MonthNameEnum.january,
//     MonthNameEnum.february,
//     MonthNameEnum.march,
//     MonthNameEnum.april,
//     MonthNameEnum.may,
//     MonthNameEnum.june,
//     MonthNameEnum.july,
//     MonthNameEnum.august,
//     MonthNameEnum.september,
//     MonthNameEnum.october,
//     MonthNameEnum.november,
//     MonthNameEnum.december,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: CPullDownButton(
//             hint: TranslationController.td.year,
//             onChanged: (value) {
//               if (onSelected != null) {
//                 onSelected!(year: int.parse(value));
//                 selectedYear = int.parse(value);
//               }
//             },
//             selectedItem: selectedYear.toString(),
//             items: years.map((e) => e.toString()).toList(),
//           ),
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: CPullDownButton(
//             isScrollControlled: true,
//             hint: TranslationController.td.month,
//             onChanged: (value) {
//               if (onSelected != null) {
//                 ESSFirebaseAnalytics().onClick(name: "year_month_filter_used");
//                 final int month = MonthNameEnumE7n.fromMonth(value);
//                 onSelected!(month: month);
//                 selectedMonth = month;
//               }
//             },
//             items: months.map((e) => e.name.capitalize!).toList(),
//             selectedItem: MonthNameEnumE7n.fromMap(selectedMonth).name.capitalize!,
//           ),
//         ),
//       ],
//     );
//   }
// }
