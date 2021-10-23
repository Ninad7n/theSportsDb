import 'dart:convert';
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

String baseUrl = "https://www.thesportsdb.com/api/";

class ApiCalls{
  Future <dynamic> commonApiCallResponse(String urlR) async {
    String url = baseUrl + urlR;
    try {
      Response response = await get(Uri.parse(url));
      log("StatusCode------------>>>>>>${response.statusCode}");
      if(response.statusCode == 200) {
        return jsonDecode(response.body);
      }else{
        return "[]";
      }
    } catch (e) {
      log('Error catching data');
      log(e.toString());
      Fluttertoast.showToast(msg: "Check Your Internet Connection !!");
      return "[]";
    }
  }
}