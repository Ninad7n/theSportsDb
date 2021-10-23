import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports_league_app/Constants/constants.dart';
import 'package:sports_league_app/Executables/calls.dart';
import 'package:sports_league_app/Screens/league_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routName = "/HomeScreen";
  HomeScreen({Key? key}) : super(key: key);

  final List<String> countryList = [
    "India",
    "United States",
    "Australia",
    "China",
    "Argentina",
    "Canada",
  ];

  @override
  Widget build(BuildContext context) {
    Get.find<LeagueDataApiCalls>().allSports();
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: size!.height,
          width: size!.width,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: size!.height*0.02+app!,),
                Text(
                  "The Sports DB",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
                SizedBox(height: size!.height*0.04,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: countryList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, LeagueScreen.routName, arguments: LeagueScreen(cName: countryList[index],));
                      },
                      child: Container(
                        height: size!.height*0.08,
                        width: size!.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: SizedBox(
                          width: size!.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  countryList[index],
                                  style: GoogleFonts.quicksand(
                                    color: Colors.grey[700],
                                    fontSize: 16.0,
                                  ),
                                ),
                                const Spacer(),
                                Icon(Icons.arrow_right_alt_outlined, color: Colors.grey[800],)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
