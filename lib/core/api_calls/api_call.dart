import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:getx_folder_structure/core/core.dart';

class AppApiCall {
  static AppApiCall? _instance;
  // Avoid self instance
  AppApiCall._();
  static AppApiCall get instance {
    _instance ??= AppApiCall._();

    return _instance!;
  }

  static final dio = Dio();

  static Future getMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
    log('AppApiCall Get Method');

    var headers = token != null
        ? {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Authorization': '',
          };

    try {
      log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: $data\n\nheaders: $headers\n\n\n');

      final response = await dio.get(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('AppApiCall Get Method <===>> ${e.message}');
      log("AppApiCall Get Method <===>> ${e.response?.data['message']}");

      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future deleteMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
    log('AppApiCall Delete Method');

    var headers = token != null
        ? {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Authorization': '',
          };
    try {
      log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: $data\n\nheaders: $headers\n\n\n');

      final response = await dio.delete(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('AppApiCall Delete Method <===>> ${e.message}');
      log("AppApiCall Delete Method <===>> ${e.response?.data['message']}");

      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future postFormDataMethod({
    endPoint,
    token,
    // required FormData data,
    required data,
    queryParameters,
  }) async {
    log('AppApiCall Post Form Data Method');

    var headers = token != null
        ? {
            'Accept': 'application/json',
            'Content-Type': 'multipart/form-data; boundary=<calculated when request is sent>',
            'Authorization': 'Bearer $token',
          }
        : {
            'Accept': 'application/json',
            'Authorization': '',
          };

    log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: ${data.fields}\n\nheaders: $headers\n\n\n');
    try {
      final response = await dio.post(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          contentType: Headers.multipartFormDataContentType,
          receiveDataWhenStatusError: true,
        ),
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('AppApiCall Post Form Data Method <===>> ${e.message}');
      log("AppApiCall Post Form Data Method <===>> ${e.response?.data['message']}");
      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future putFormDataMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
    log('AppApiCall Put Form Data Method');

    var headers = token != null
        ? {
            'Accept': 'application/json',
            'Content-Type': 'multipart/form-data; boundary=<calculated when request is sent>',
            'Authorization': 'Bearer $token',
          }
        : {
            'Accept': 'application/json',
            'Authorization': '',
          };

    try {
      log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: $data\n\nheaders: $headers\n\n\n');

      final response = await dio.put(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          contentType: Headers.multipartFormDataContentType,
          receiveDataWhenStatusError: true,
        ),
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('AppApiCall Put Form Data Method <===>> ${e.message}');
      log("AppApiCall Put Form Data Method <===>> ${e.response?.data['message']}");
      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future postMethod({
    endPoint,
    token,
    queryParameters,
    data,
  }) async {
    log('AppApiCall Post Method');

    var headers = token != null
        ? {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Authorization': '',
          };
    // log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: ${data.fields}\n\nheaders: $headers\n\n\n');

    try {
      log('\nRequest Body:\n\nendPoint: $endPoint\n\ntoken: $token\n\nqueryParameters: $queryParameters\n\ndata: $data\n\nheaders: $headers\n\n\n');

      var response = await dio.post(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          receiveDataWhenStatusError: false,
        ),
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('AppApiCall Post Method <===>> ${e.message}');
    }
  }
}
