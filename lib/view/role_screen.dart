import 'package:flutter/material.dart';
import 'package:valorant_app/model/aget.dart';
import 'package:valorant_app/widgets/role_widgets/role_screen_child_isnot_existed.dart';

import '../widgets/role_widgets/role_screen_child_isexisted.dart';


class RoleScreen extends StatelessWidget {
  const RoleScreen({Key? key,required this.agent}) : super(key: key);
  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,elevation: 0.0,),
      body:checkIfRoleExist() ,
    );
  }
  Widget checkIfRoleExist(){
    if(agent.role!=null){
      return RoleScreenChildIsExisted(agent: agent,);
    }else{
     return const RoleScreenChildIsNotExisted();
    }
  }
}

