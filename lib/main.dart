import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports_league_app/Constants/constants.dart';
import 'package:sports_league_app/Executables/calls.dart';
import 'package:sports_league_app/Screens/home_screen.dart';
import 'package:sports_league_app/Screens/league_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor
      ),
      home: const Splash(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings  route){
        return MaterialPageRoute(builder: (BuildContext context){
          switch (route.name)  {
            case HomeScreen.routName:
              return HomeScreen();
            case LeagueScreen.routName:
              LeagueScreen args = route.arguments as LeagueScreen;
              return LeagueScreen(cName: args.cName,);
            default:
              return const Splash();
          }
        });
      }
    );
  }
}


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  navigate()async{
    Future.delayed(const Duration(milliseconds: 1000),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
  }

  @override
  void initState() {
    super.initState();
    navigate();
    Get.lazyPut(() => LeagueDataApiCalls());
  }

  @override
  Widget build(BuildContext context) {
    getHeight(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size!.height,
        width: size!.width,
        child: Center(
          child: Text(
            "Welcome to The Sports DB",
            style: GoogleFonts.quicksand(
              color: Colors.grey[800],
               fontSize: 18.0,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}
