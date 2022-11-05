import 'package:flutter/material.dart';
import 'package:valorant_app/view/role_screen.dart';
import '../../model/aget.dart';
import '../custome_text.dart';
import 'agent_card.dart';

class AgentList extends StatelessWidget {
  const AgentList({Key? key,required this.agents}) : super(key: key);
  final List<Agent>agents;
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height*.06,),
        CustomText(txt: "Select an agent ",fotSize: height*.06,),
        SizedBox(height: height*.04,),
        Expanded(
          child:GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .48,
              ),

              itemBuilder:(context,index)=> GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RoleScreen(agent: agents[index],))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AgentCard(agentItem: agents[index],),
                  )),
            itemCount: agents.length,
          ),
        ),
      ],
    ) ;
  }
}
