import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Color primaryColor = Color(0xffC23229);

Size? size;
double? top,app;
getHeight(var context){
  size = MediaQuery.of(context).size;
  top = MediaQuery.of(context).padding.top;
  app = AppBar().preferredSize.height;
}

Future<bool> launchURL(_url) async {
  log(_url);
  return await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}