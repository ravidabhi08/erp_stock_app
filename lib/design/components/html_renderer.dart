// import 'package:flutter/material.dart';

// import '../utils/design_utils.dart';

// class HtmlRenderer extends StatelessWidget {
//   final String? data;
//   final Color? color;
//   final int? maxLines;
//   final double fontSize;
//   final FontWeight? fontWeight;

//   const HtmlRenderer({
//     super.key,
//     this.color,
//     this.maxLines,
//     this.fontWeight,
//     required this.data,
//     this.fontSize = 14,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final defaultStyle = Style(
//       color: color,
//       maxLines: maxLines,
//       margin: Margins.zero,
//       fontWeight: fontWeight,
//       fontSize: FontSize(getFontSizeForHTML(context, fontSize: fontSize)),
//       textOverflow: maxLines == null ? TextOverflow.visible : TextOverflow.ellipsis,
//     );

//     return Html(
//       data: data,
//       style: {
//         "p": defaultStyle,
//         "ol": defaultStyle,
//         "pre": defaultStyle,
//         "body": defaultStyle,
//         "strong": defaultStyle,
//         "blockquote": defaultStyle,
//         "br": defaultStyle.copyWith(lineHeight: LineHeight.number(0.1)),
//       },
//       onLinkTap: (url, attributes, element) async {
//         if (await canLaunchUrlString(url ?? '')) {
//           await launchUrlString(url ?? '');
//         }
//       },
//     );
//   }
// }
