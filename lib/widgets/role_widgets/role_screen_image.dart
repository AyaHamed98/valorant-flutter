import 'package:flutter/cupertino.dart';

import '../../model/aget.dart';

class RoleScreenImage extends StatelessWidget {
  const RoleScreenImage({Key? key,required this.agent}) : super(key: key);
  final Agent agent;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height:height*.35 ,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(agent.displayIconSmall),
              fit: BoxFit.fill
          ),
          gradient: LinearGradient(
              colors: [
                agent.backgroundGradientColors[1],
                agent.backgroundGradientColors[2],
                agent.backgroundGradientColors[3],
              ],
              begin: AlignmentDirectional.centerEnd,
              end: AlignmentDirectional.bottomStart)
      ),

    );
  }
}
