import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:valorant_app/widgets/custome_text.dart';
import '../../model/aget.dart';
import 'agent_card_image.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({Key? key, required this.agentItem}) : super(key: key);
  final Agent agentItem;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
       const SizedBox(),
        Container(
          height: height * .5,
          width: width * .42,
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(height * .15)),
              gradient: LinearGradient(
                  colors: [
                    agentItem.backgroundGradientColors[1],
                    agentItem.backgroundGradientColors[2],
                    agentItem.backgroundGradientColors[3],
                  ],
                  begin: AlignmentDirectional.centerEnd,
                  end: AlignmentDirectional.bottomStart)),
        ),
        AgentCardImage(agentItem:agentItem),
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: height * .32, start: width * .12),
          child: CustomText(
            txt: agentItem.displayName,
            isBold: true,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: height * .38, start: width * .02),
          child: SizedBox(
            width: width * .4,
            child: CustomText(
              txt: agentItem.description,
              maxLines: 3,
              fotSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }




}
