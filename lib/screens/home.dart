import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(onPressed: (){
            signOut(context);
          }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Home'),
         )
       ),
    );
  } 

  signOut(BuildContext ctx) async{
final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil
    (MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}