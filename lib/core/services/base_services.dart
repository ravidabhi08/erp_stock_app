// import 'package:dio/dio.dart';
// import 'package:erp_stocks/core/utils/helpers.dart';
// import 'package:flutter/foundation.dart';

// import '/core/messages/error_messages.dart';
// import '/core/services/gs_services.dart';

// part 'api_exceptions.dart';

// mixin BaseService {
//   // i.e. .v1, .v2
//   final String apiVersion = '.v1';

//   static Dio _dio = DioX().getDio(GSServices.getUser?. ?? "");

//   Dio get dio => _dio;

//   static void setBaseUrl(String baseUrl) {
//     _dio = DioX().getDio(baseUrl);
//   }

//   final Map<String, dynamic> requiresToken = {"requiresToken": true};

//   Future<T> tryOrCatch<T>(Future<T> Function() methodToRun) async {
//     try {
//       return await methodToRun();
//     } on AppException {
//       rethrow;
//     } on DioException catch (err) {
//       throw getErrorMessageForDioErrors(err);
//     } catch (e, trace) {
//       debugPrint("$e\n$trace");
//       throw AppException(ErrorMessages.internalError, "Default Exception: ");
//     }
//   }
// }
