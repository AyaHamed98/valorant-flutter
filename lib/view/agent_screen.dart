import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/agent_screen_data/agant_screen_data_cubit.dart';
import '../widgets/aget_widgets/agent_list.dart';
import 'agent_loadind_screen.dart';

class AgentScreen extends StatelessWidget {
  const AgentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: BlocProvider(
          create: (context) => AgentCubit(),
          child: BlocBuilder<AgentCubit,AgentState>(
            builder: (context, state) {
              if(state is AgentsLoadedState){
                return AgentList(agents: AgentCubit.get(context).agents,) ;
              }
              return const AgentLoadingWidget() ;
            },
          ),
        ),
      ),
    );
  }
}

/*

 */
