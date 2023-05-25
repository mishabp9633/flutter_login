import 'package:flutter/material.dart';
import 'package:flutter_login/main.dart';
import 'package:flutter_login/screens/home.dart';
import 'package:flutter_login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_svg/svg.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

  @override
  void initState() {
    // TODO: implement initState
    // gotoLogin();
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 300,
          ),
        // child: SvgPicture.asset('assets/logo.svg'),
        
        ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

 Future<void> gotoLogin() async{
 await Future.delayed(Duration(
    seconds: 3
  ));
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScreenLogin()));
 }

 Future<void> checkUserLoggedIn() async{
  final _sharedPrefs  = await SharedPreferences.getInstance();
  final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
  if(_userLoggedIn == null || _userLoggedIn == false)
  {
    gotoLogin();
  }else(
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()))
  );
 }
}