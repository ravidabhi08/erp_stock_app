part of 'design_utils.dart';

const String appName = "Erp Stocks";

const String erpUrl = "https://erp.nesscale.com";

bool get isDarkMode => Get.context!.theme.brightness == Brightness.dark;

String get na => TranslationController.td.nA;

const ScrollPhysics defaultScrollablePhysics = AlwaysScrollableScrollPhysics();
const ScrollPhysics neverScrollablePhysics = NeverScrollableScrollPhysics();

const double defaultButtonPressedOpacity = 0.6;

const double defaultBorderRadius = 24;

String get defaultLocale => 'en';

const TextOverflow defaultOverflow = TextOverflow.ellipsis;

// TODO: Refector this
const String customer = "Customer";
const String employee = "Employee";

Widget defaultLoader() {
  return const CircularProgressIndicator(strokeWidth: 2);
}

List<BoxShadow> get containerShadow {
  return [
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, 4),
      color: Get.context!.appColors.shadowColor.withOpacity(.06),
    ),
  ];
}

double getFontSizeForHTML(context, {double fontSize = 14}) {
  final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
  return fontSize - ((fontSize * textScaleFactor - fontSize) * 2);
}

void defaultSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

String getHtml(String? text) {
  if (isNullEmptyOrFalse(text?.trim())) return '';

  // Split the input string by lines, keeping all lines intact
  List<String> lines = text!.split('\n');

  // Map each line to a paragraph tag, replacing spaces with `&nbsp;`
  List<String> wrappedLines = lines.map((line) {
    if (line.isEmpty) {
      return '<p><br></p>'; // Keeps blank lines as line breaks
    }
    // Replace spaces with `&nbsp;` to preserve indentation and trailing spaces
    String lineWithSpaces = line.replaceAll(' ', '&nbsp;');
    return '<p>$lineWithSpaces</p>';
  }).toList();

  // Join all wrapped lines into a single string
  String wrappedText = wrappedLines.join('');

  return '<div class="ql-editor read-mode">$wrappedText</div>';
}

String extractTextFromHtml(html_dom.Document document) {
  // Select all paragraph elements within the specified div
  final paragraphElements =
      document.querySelector('.ql-editor.read-mode')?.getElementsByTagName('p');

  // Initialize an empty string to store the extracted text
  String extractedText = '';

  // Iterate through paragraph elements and extract their text without trimming
  for (var paragraph in paragraphElements ?? []) {
    extractedText += paragraph.text + '\n'; // Append text with new line, preserving spaces
  }

  return extractedText;
}

List<Effect> get childrenTransition => <Effect>[
      FadeEffect(duration: 200.ms, curve: Curves.decelerate),
      SlideEffect(duration: 200.ms, curve: Curves.decelerate)
    ];
