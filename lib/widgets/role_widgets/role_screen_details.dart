
import 'package:flutter/material.dart';

import '../../model/aget.dart';
import '../custome_text.dart';

class RoleScreenDetails extends StatelessWidget {
  const RoleScreenDetails({Key? key,required this.agent}) : super(key: key);
 final Agent agent;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  Padding(
      padding:  EdgeInsets.all(height*.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: height*.07,
                  child: Image.network(agent.role!.displayIcon)),
              SizedBox(width: height*.02,),
              CustomText(txt: agent.role!.displayName),
            ],
          ),
          SizedBox(height: height*.05,),
          const CustomText(txt: "Description : ",isBold: true,fotSize: 25,),
          SizedBox(height: height*.03,),
          CustomText(txt: agent.role!.description),
        ],
      ),
    );
  }
}
