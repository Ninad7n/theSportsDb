// To parse this JSON data, do
//
//     final leagueDataModel = leagueDataModelFromJson(jsonString);

import 'dart:convert';

List<LeagueDataModel> leagueDataListModelFromJson(String str) => List<LeagueDataModel>.from(json.decode(str).map((x) => LeagueDataModel.fromJson(x)));

String leagueDataListModelToJson(List<LeagueDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



LeagueDataModel leagueDataModelFromJson(String str) => LeagueDataModel.fromJson(json.decode(str));

String leagueDataModelToJson(LeagueDataModel data) => json.encode(data.toJson());

class LeagueDataModel {
  LeagueDataModel({
    this.idLeague,
    this.idSoccerXml,
    this.idApIfootball,
    this.strSport,
    this.strLeague,
    this.strLeagueAlternate,
    this.strDivision,
    this.idCup,
    this.strCurrentSeason,
    this.intFormedYear,
    this.dateFirstEvent,
    this.strGender,
    this.strCountry,
    this.strWebsite,
    this.strFacebook,
    this.strTwitter,
    this.strYoutube,
    this.strRss,
    this.strDescriptionEn,
    this.strDescriptionDe,
    this.strDescriptionFr,
    this.strDescriptionIt,
    this.strDescriptionCn,
    this.strDescriptionJp,
    this.strDescriptionRu,
    this.strDescriptionEs,
    this.strDescriptionPt,
    this.strDescriptionSe,
    this.strDescriptionNl,
    this.strDescriptionHu,
    this.strDescriptionNo,
    this.strDescriptionPl,
    this.strDescriptionIl,
    this.strTvRights,
    this.strFanart1,
    this.strFanart2,
    this.strFanart3,
    this.strFanart4,
    this.strBanner,
    this.strBadge,
    this.strLogo,
    this.strPoster,
    this.strTrophy,
    this.strNaming,
    this.strComplete,
    this.strLocked,
  });

  String? idLeague;
  dynamic idSoccerXml;
  dynamic idApIfootball;
  String? strSport;
  String? strLeague;
  String? strLeagueAlternate;
  String? strDivision;
  String? idCup;
  String? strCurrentSeason;
  String? intFormedYear;
  DateTime? dateFirstEvent;
  String? strGender;
  String? strCountry;
  String? strWebsite;
  String? strFacebook;
  String? strTwitter;
  String? strYoutube;
  String? strRss;
  String? strDescriptionEn;
  dynamic strDescriptionDe;
  dynamic strDescriptionFr;
  dynamic strDescriptionIt;
  dynamic strDescriptionCn;
  dynamic strDescriptionJp;
  dynamic strDescriptionRu;
  String? strDescriptionEs;
  dynamic strDescriptionPt;
  dynamic strDescriptionSe;
  dynamic strDescriptionNl;
  dynamic strDescriptionHu;
  dynamic strDescriptionNo;
  dynamic strDescriptionPl;
  dynamic strDescriptionIl;
  String? strTvRights;
  String? strFanart1;
  String? strFanart2;
  String? strFanart3;
  String? strFanart4;
  String? strBanner;
  String? strBadge;
  String? strLogo;
  String? strPoster;
  String? strTrophy;
  String? strNaming;
  String? strComplete;
  String? strLocked;

  factory LeagueDataModel.fromJson(Map<String, dynamic> json) => LeagueDataModel(
    idLeague: json["idLeague"] == null ? null : json["idLeague"],
    idSoccerXml: json["idSoccerXML"],
    idApIfootball: json["idAPIfootball"],
    strSport: json["strSport"] == null ? null : json["strSport"],
    strLeague: json["strLeague"] == null ? null : json["strLeague"],
    strLeagueAlternate: json["strLeagueAlternate"] == null ? null : json["strLeagueAlternate"],
    strDivision: json["strDivision"] == null ? null : json["strDivision"],
    idCup: json["idCup"] == null ? null : json["idCup"],
    strCurrentSeason: json["strCurrentSeason"] == null ? null : json["strCurrentSeason"],
    intFormedYear: json["intFormedYear"] == null ? null : json["intFormedYear"],
    dateFirstEvent: json["dateFirstEvent"] == null ? null : DateTime.parse(json["dateFirstEvent"]),
    strGender: json["strGender"] == null ? null : json["strGender"],
    strCountry: json["strCountry"] == null ? null : json["strCountry"],
    strWebsite: json["strWebsite"] == null ? null : json["strWebsite"],
    strFacebook: json["strFacebook"] == null ? null : json["strFacebook"],
    strTwitter: json["strTwitter"] == null ? null : json["strTwitter"],
    strYoutube: json["strYoutube"] == null ? null : json["strYoutube"],
    strRss: json["strRSS"] == null ? null : json["strRSS"],
    strDescriptionEn: json["strDescriptionEN"] == null ? null : json["strDescriptionEN"],
    strDescriptionDe: json["strDescriptionDE"],
    strDescriptionFr: json["strDescriptionFR"],
    strDescriptionIt: json["strDescriptionIT"],
    strDescriptionCn: json["strDescriptionCN"],
    strDescriptionJp: json["strDescriptionJP"],
    strDescriptionRu: json["strDescriptionRU"],
    strDescriptionEs: json["strDescriptionES"] == null ? null : json["strDescriptionES"],
    strDescriptionPt: json["strDescriptionPT"],
    strDescriptionSe: json["strDescriptionSE"],
    strDescriptionNl: json["strDescriptionNL"],
    strDescriptionHu: json["strDescriptionHU"],
    strDescriptionNo: json["strDescriptionNO"],
    strDescriptionPl: json["strDescriptionPL"],
    strDescriptionIl: json["strDescriptionIL"],
    strTvRights: json["strTvRights"] == null ? null : json["strTvRights"],
    strFanart1: json["strFanart1"] == null ? null : json["strFanart1"],
    strFanart2: json["strFanart2"] == null ? null : json["strFanart2"],
    strFanart3: json["strFanart3"] == null ? null : json["strFanart3"],
    strFanart4: json["strFanart4"] == null ? null : json["strFanart4"],
    strBanner: json["strBanner"] == null ? null : json["strBanner"],
    strBadge: json["strBadge"] == null ? null : json["strBadge"],
    strLogo: json["strLogo"] == null ? null : json["strLogo"],
    strPoster: json["strPoster"] == null ? null : json["strPoster"],
    strTrophy: json["strTrophy"] == null ? null : json["strTrophy"],
    strNaming: json["strNaming"] == null ? null : json["strNaming"],
    strComplete: json["strComplete"] == null ? null : json["strComplete"],
    strLocked: json["strLocked"] == null ? null : json["strLocked"],
  );

  Map<String, dynamic> toJson() => {
    "idLeague": idLeague == null ? null : idLeague,
    "idSoccerXML": idSoccerXml,
    "idAPIfootball": idApIfootball,
    "strSport": strSport == null ? null : strSport,
    "strLeague": strLeague == null ? null : strLeague,
    "strLeagueAlternate": strLeagueAlternate == null ? null : strLeagueAlternate,
    "strDivision": strDivision == null ? null : strDivision,
    "idCup": idCup == null ? null : idCup,
    "strCurrentSeason": strCurrentSeason == null ? null : strCurrentSeason,
    "intFormedYear": intFormedYear == null ? null : intFormedYear,
    "dateFirstEvent": dateFirstEvent == null ? null : "${dateFirstEvent!.year.toString().padLeft(4, '0')}-${dateFirstEvent!.month.toString().padLeft(2, '0')}-${dateFirstEvent!.day.toString().padLeft(2, '0')}",
    "strGender": strGender == null ? null : strGender,
    "strCountry": strCountry == null ? null : strCountry,
    "strWebsite": strWebsite == null ? null : strWebsite,
    "strFacebook": strFacebook == null ? null : strFacebook,
    "strTwitter": strTwitter == null ? null : strTwitter,
    "strYoutube": strYoutube == null ? null : strYoutube,
    "strRSS": strRss == null ? null : strRss,
    "strDescriptionEN": strDescriptionEn == null ? null : strDescriptionEn,
    "strDescriptionDE": strDescriptionDe,
    "strDescriptionFR": strDescriptionFr,
    "strDescriptionIT": strDescriptionIt,
    "strDescriptionCN": strDescriptionCn,
    "strDescriptionJP": strDescriptionJp,
    "strDescriptionRU": strDescriptionRu,
    "strDescriptionES": strDescriptionEs == null ? null : strDescriptionEs,
    "strDescriptionPT": strDescriptionPt,
    "strDescriptionSE": strDescriptionSe,
    "strDescriptionNL": strDescriptionNl,
    "strDescriptionHU": strDescriptionHu,
    "strDescriptionNO": strDescriptionNo,
    "strDescriptionPL": strDescriptionPl,
    "strDescriptionIL": strDescriptionIl,
    "strTvRights": strTvRights == null ? null : strTvRights,
    "strFanart1": strFanart1 == null ? null : strFanart1,
    "strFanart2": strFanart2 == null ? null : strFanart2,
    "strFanart3": strFanart3 == null ? null : strFanart3,
    "strFanart4": strFanart4 == null ? null : strFanart4,
    "strBanner": strBanner == null ? null : strBanner,
    "strBadge": strBadge == null ? null : strBadge,
    "strLogo": strLogo == null ? null : strLogo,
    "strPoster": strPoster == null ? null : strPoster,
    "strTrophy": strTrophy == null ? null : strTrophy,
    "strNaming": strNaming == null ? null : strNaming,
    "strComplete": strComplete == null ? null : strComplete,
    "strLocked": strLocked == null ? null : strLocked,
  };
}
