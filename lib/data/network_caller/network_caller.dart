import 'dart:convert';
import 'dart:js';

import 'package:ecommerceshop/apps.dart';
import 'package:ecommerceshop/presentations/screen/email_verifactions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/response_wrapper.dart';

class NetworkCaller {
  static Future<Network_Response> getRequest({required String url}) async {
    try {
      final Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodedata = jsonDecode(response.body);
        return Network_Response(
            responsecode: response.statusCode,
            issuccess: true,
            responseData: decodedata);
      } else if (response.statusCode == 401) {
        goToSignScreen();
        return Network_Response(
          responsecode: response.statusCode,
          issuccess: false,
        );
      } else {
        return Network_Response(
            responsecode: response.statusCode, issuccess: false);
      }
    } catch (e) {
      return Network_Response(
          responsecode: -1, issuccess: false, errorMessage: e.toString());
    }
  }

  static Future<Network_Response> postRequest({required String url,Map<Map,String>? body}) async {
    try {
      final Response response = await post(Uri.parse(url),body: body,headers: {
        'accept':'application/json',
      });
      if (response.statusCode == 200) {
        final decodedata = jsonDecode(response.body);
        return Network_Response(
            responsecode: response.statusCode,
            issuccess: true,
            responseData: decodedata);
      } else if (response.statusCode == 401) {
        goToSignScreen();
        return Network_Response(
          responsecode: response.statusCode,
          issuccess: false,
        );
      } else {
        return Network_Response(
            responsecode: response.statusCode, issuccess: false);
      }
    } catch (e) {
      return Network_Response(
          responsecode: -1, issuccess: false, errorMessage: e.toString());
    }
  }

 static void goToSignScreen() {
    Navigator.push(MyApp.globalKey.currentState!.context,
        MaterialPageRoute(builder: (context) => EmailVerifactions()));
  }
}
