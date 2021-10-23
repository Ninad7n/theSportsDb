import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sports_league_app/DataModels/league_data_model.dart';
import 'package:sports_league_app/Services/api_call.dart';

class LeagueDataApiCalls extends GetxController {
  ApiCalls calls = ApiCalls();
  List<LeagueDataModel> data = [];
  List<LeagueDataModel> searchDataList = [];
  bool isLoading = false;
  TextEditingController searchData = TextEditingController();
  String backImage = '';

  dataCall(String con)async{
    searchData.clear();
    searchDataList.clear();
    data.clear();
    isLoading = true;
    update();
    await calls.commonApiCallResponse("v1/json/1/search_all_leagues.php?c=$con").then((value) {
      if(value != null || jsonDecode(value)["countrys"] != null){
        //log(value['countrys'].toString());
        data.addAll(leagueDataListModelFromJson(jsonEncode(value["countrys"])));
        searchDataList.addAll(data);
        isLoading = false;
        update();
      }else{
        Fluttertoast.showToast(msg: "No data Found");
      }
    });
  }

  allSports()async{
    data.clear();
    isLoading = true;
    update();
    await calls.commonApiCallResponse("v1/json/1/all_sports.php").then((value) {
      if(value != null || jsonDecode(value)["sports"] != null){
        for (var e in (value['sports'] as List)) {
          if(e['strSport'] == 'Soccer'){
            backImage = e['strSportThumb'];
          }
        }
        isLoading = false;
        update();
      }else{
        Fluttertoast.showToast(msg: "No data Found");
      }
    });
  }

  searchAllLeague(String league)async{
    log(league);
    searchDataList.clear();
    isLoading = true;
    update();
    if(league != ''){
      for (var e in data) {
        if(e.strLeague.toString().toLowerCase().contains(league.toLowerCase())){
          searchDataList.add(e);
        }
      }
    }else{
      searchDataList.addAll(data);
    }
    isLoading = false;
    update();
  }
}