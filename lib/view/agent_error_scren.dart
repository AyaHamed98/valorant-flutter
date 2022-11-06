
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_app/widgets/custome_text.dart';

class AgentErrorScreen extends StatelessWidget {
  const AgentErrorScreen({Key? key,required this.error}) : super(key: key);
  final String error ;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       title: Center(child: Text(error)),
      content: ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child:const CustomText(txt: "Exit the progrem",),
        style: ElevatedButton.styleFrom(
            fixedSize:const Size.fromWidth(double.infinity),
            primary: Colors.red
        ),
      ),
    );
  }
}
