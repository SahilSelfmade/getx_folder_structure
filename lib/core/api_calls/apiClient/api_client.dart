import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_folder_structure/core/constants/api_constants.dart';

class ApiClient extends GetConnect {
  Future<dynamic> callPostApiClientClient(String endPoint, {Map<String, dynamic>? body, String token = ""}) async {
    Map<String, String> headers;

    if (token.isNotEmpty) {
      headers = {"Content-type": "application/json", "Authorization": "Bearer $token"};
    } else {
      headers = {
        "Content-type": "application/json",
      };
    }

    String url = endPoint;

    log("callPostApiClient value of body is $body");
    log("callPostApiClient value of url is $url");
    log("callPostApiClient value of apiHeader is $headers");
    try {
      var response = await post(
        "${ApiConstant.baseUrlLive}$url",
        body,
        headers: headers,
      );

      if (response.statusCode == 200) {
        // print('callPostApiClient response Header ==>\n ${response.headers}');
        log('callPostApiClient response.statusCode ==>\n ${response.statusCode}');

        log('callPostApiClient response.body ==>\n ${response.body}');

        log('Run Successfully!!!!!');

        return response.body;
      } else {
        log('callPostApiClient response.statusText ==> ${response.statusText}');

        return response.body;
      }
    } catch (e) {
      log("callPostApiClient Exception ==> ${e.toString()}");
    }
    return false;
  }

  /*GET API CALL USING GET CONNECT*/

  Future<dynamic> callGetApiClient(String endPoint, {Map<String, dynamic>? query, String token = ""}) async {
    Map<String, String> headers;

    if (token.isNotEmpty) {
      headers = {"Content-type": "application/json", "Authorization": "Bearer $token"};
    } else {
      headers = {
        "Content-type": "application/json",
      };
    }

    String url = endPoint;

    log("callGetApiClient value of query is $query");
    log("callGetApiClient value of url is $url");
    log("callGetApiClient value of apiHeader is $headers");
    try {
      var response = await get(
        "${ApiConstant.baseUrlLive}$url",
        query: query,
        headers: headers,
      );

      if (response.statusCode == 200) {
        // print('callGetApiClient response Header ==>\n ${response.headers}');
        log('callGetApiClient response.statusCode ==>\n ${response.statusCode}');

        log('callGetApiClient response.body ==>\n ${response.body}');

        log('Run Successfully!!!!!');

        return response.body;
      } else {
        log('callGetApiClient response.statusText ==> ${response.statusText}');

        return response.body;
      }
    } catch (e) {
      log("callGetApiClient Exception ==> ${e.toString()}");
    }
    return false;
  }
}
