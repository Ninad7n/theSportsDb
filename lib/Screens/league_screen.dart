import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports_league_app/Constants/constants.dart';
import 'package:sports_league_app/Executables/calls.dart';

class LeagueScreen extends StatelessWidget {
  static const routName = "/LeagueScreen";
  final String cName;
  const LeagueScreen({Key? key, required this.cName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LeagueDataApiCalls>().dataCall(cName);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(cName)
      ),
      body: SizedBox(
        height: size!.height,
        width: size!.width,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              GetBuilder<LeagueDataApiCalls>(
                init: LeagueDataApiCalls(),
                  builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size!.height*0.07,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: GoogleFonts.quicksand(color: Colors.grey.shade100, fontWeight: FontWeight.w600, fontSize: 14.0),
                              cursorColor: Colors.blue,
                              controller: _.searchData,
                              onChanged: (value){
                                Get.find<LeagueDataApiCalls>().searchAllLeague(value);
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 3.0),
                                  // enabledBorder: UnderlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.grey.shade500),
                                  // ),
                                  // focusedBorder: UnderlineInputBorder(
                                  //   borderSide: BorderSide(color:  Colors.grey.shade500),
                                  // ),
                                  border: InputBorder.none,
                                  hintText: "Search League",
                                  hintStyle: GoogleFonts.quicksand(color: Colors.grey[100], fontSize: 14.0)
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
              SizedBox(
                height: size!.height*0.75,
                child: GetBuilder<LeagueDataApiCalls>(
                  init: LeagueDataApiCalls(),
                  builder: (_) {
                    return _.isLoading?const Center(child: CircularProgressIndicator(strokeWidth: 2,)):ListView.builder(
                      itemCount: _.searchDataList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            width: size!.width,
                            decoration: const BoxDecoration(
                                color: Colors.white,

                            ),
                            child: Stack(
                              children: [
                                Image.network(
                                  _.backImage,
                                  width: size!.width,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: size!.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            _.searchDataList[index].strLeague.toString(),
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.quicksand(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w800
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Image.network(
                                            _.searchDataList[index].strBadge.toString(),
                                            height: size!.height*0.06,
                                            width:size!.height*0.06,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if(_.searchDataList[index].strFacebook != null)
                                            InkWell(
                                              onTap: (){
                                                  launchURL(_.searchDataList[index].strFacebook);
                                              },
                                              child: SvgPicture.asset(
                                                  'assets/icons/facebook.svg',
                                                color: Colors.grey[100],
                                                height: size!.height*0.04,
                                                width:size!.height*0.04,
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            if(_.searchDataList[index].strTwitter != null)
                                            InkWell(
                                              onTap:(){

                                                  launchURL(_.searchDataList[index].strTwitter);

                                              },
                                              child: SvgPicture.asset(
                                                "assets/icons/twitter.svg",
                                                color: Colors.grey[100],
                                                height: size!.height*0.04,
                                                width:size!.height*0.04,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },);
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
