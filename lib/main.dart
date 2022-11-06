import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:valorant_app/repository/loacl_storage_helper/storage_firstopen.dart';
import 'package:valorant_app/view/agent_screen.dart';
import 'package:valorant_app/view/onbording_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "valorant app",
      home:FirstOpen().isFirstOpen()==true?const AgentScreen():const OnBoardingScreen() ,
    );
  }
}
