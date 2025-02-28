import 'package:erp_stocks/design/utils/design_utils.dart';

class GetLanguageModel {
  String? language;
  String? languageName;

  GetLanguageModel({this.language, this.languageName});

  GetLanguageModel.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    languageName = json['language_name'];
  }

  // factory con
  factory GetLanguageModel.defaultLocale() {
    return GetLanguageModel(
      language: defaultLocale,
      languageName: 'English',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['language'] = language;
    data['language_name'] = languageName;
    return data;
  }

  @override
  String toString() => 'GetLanguageModel(language: $language, languageName: $languageName)';

  @override
  bool operator ==(covariant GetLanguageModel other) {
    if (identical(this, other)) return true;

    return other.language == language && other.languageName == languageName;
  }

  @override
  int get hashCode => language.hashCode ^ languageName.hashCode;
}
