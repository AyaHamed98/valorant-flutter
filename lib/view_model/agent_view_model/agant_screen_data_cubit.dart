import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/model/aget.dart';
import 'package:valorant_app/repository/remote_repository/agent_repository.dart';
part 'agant_screen_data_state.dart';

  class AgentCubit extends Cubit<AgentState> {
  AgentCubit() : super(AgentScreenDataInitial()){
    getAgentsData();
  }

  static AgentCubit get(BuildContext context)=>BlocProvider.of(context);

  List<Agent>agents=[];

  Future<void>getAgentsData()async{
    emit(AgentsIsLoadingState());
    await AgentRepository().getAgentsData().then((agents){
      this.agents=agents;
      emit(AgentsLoadedState());
    } ).onError((error, stackTrace) {
      emit(AgentsIsErrorState(error.toString()));
    });
  }

}
