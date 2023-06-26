import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:getx_folder_structure/core/core.dart';

class ApiCall {
  static ApiCall? _instance;
  // Avoid self instance
  ApiCall._();
  static ApiCall get instance {
    _instance ??= ApiCall._();

    return _instance!;
  }

  static final dio = Dio();

  static Future getMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
    var headers = token != null
        ? {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Authorization': '',
          };
    // dio.interceptors.add(
    //   AwesomeDioInterceptor(
    //     logRequestTimeout: false,
    //     logResponseHeaders: false,
    //   ),
    // );
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
      log('ApiCall Get Method <===>> ${e.message}');
      log("ApiCall Get Method <===>> ${e.response?.data['message']}");

      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future deleteMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
    var headers = token != null
        ? {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Authorization': '',
          };
    // dio.interceptors.add(
    //   AwesomeDioInterceptor(
    //     logRequestTimeout: false,
    //     logResponseHeaders: false,
    //   ),
    // );
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
      log('ApiCall Post Method <===>> ${e.message}');
      log("ApiCall Post Method <===>> ${e.response?.data['message']}");

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
    // dio.interceptors.add(
    //   AwesomeDioInterceptor(
    //     logRequestTimeout: false,
    //     logResponseHeaders: false,
    //   ),
    // );

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
      log('ApiCall Post Method <===>> ${e.message}');
      log("ApiCall Post Method <===>> ${e.response?.data['message']}");
      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future putFormDataMethod({
    endPoint,
    token,
    data,
    queryParameters,
  }) async {
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
    // dio.interceptors.add(
    //   AwesomeDioInterceptor(
    //     logRequestTimeout: false,
    //     logResponseHeaders: false,
    //   ),
    // );

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
      log('ApiCall Post Method <===>> ${e.message}');
      log("ApiCall Post Method <===>> ${e.response?.data['message']}");
      CustomToast.showToast(e.response?.data['message']);
    }
  }

  static Future postMethod({
    endPoint,
    token,
    queryParameters,
    data,
  }) async {
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
      // dio.interceptors.add(
      //   AwesomeDioInterceptor(
      //     logRequestTimeout: false,
      //     logResponseHeaders: false,
      //   ),
      // );
      var response = await dio.post(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          receiveDataWhenStatusError: false,
        ),

        // receiveDataWhenStatusError: true,
      );

      if (response.statusCode == 200) {
        log('\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(response.data)}\n\n\n\n');
        log('\n================================================================\n================================================================\nAPI CALL END\n');
        return response.data;
      }
    } on DioException catch (e) {
      log('ApiCall Post Method <===>> ${e.message}');
      // log("ApiCall Post Method <===>> ${e.response?.data['message']}");
      // Get.defaultDialog(title: "Error", middleText: e.response?.data['message'], backgroundColor: Colors.grey);
      // CustomToast.showToast(e.response?.data['message']);
    }
  }
}
