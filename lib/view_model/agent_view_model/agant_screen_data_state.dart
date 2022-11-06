part of 'agant_screen_data_cubit.dart';

@immutable
abstract class AgentState {}

class AgentScreenDataInitial extends AgentState {}
class AgentsLoadedState extends AgentState{}
class AgentsIsLoadingState extends AgentState{}
class AgentsIsErrorState extends AgentState{
  AgentsIsErrorState(this.error);
  String error;
}
