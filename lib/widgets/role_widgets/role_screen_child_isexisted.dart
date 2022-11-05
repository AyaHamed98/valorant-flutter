import 'package:flutter/material.dart';
import 'package:valorant_app/widgets/role_widgets/role_screen_details.dart';
import 'package:valorant_app/widgets/role_widgets/role_screen_image.dart';
import '../../model/aget.dart';

class RoleScreenChildIsExisted extends StatelessWidget {
  const RoleScreenChildIsExisted({
    Key? key,
    required this.agent,
  }) : super(key: key);

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:SingleChildScrollView(
        child: Column(
          children: [
            RoleScreenImage(agent: agent),
            RoleScreenDetails(agent: agent)
          ],
        ),
      ) ,
    );
  }




}
