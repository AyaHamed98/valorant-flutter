import 'dart:convert';
import 'package:valorant_app/constants.dart';
import 'package:valorant_app/model/aget.dart';
import 'package:http/http.dart' as http;

class AgentRepository{


 Future<List<Agent>>getAgentsData()async{

   try{
    String url="$baseUrl/v1/agents";
    Uri uri=Uri.parse(url);
    List<Agent> agents=[];
    http.Response response= await http.get(uri);
    if(response.statusCode==200){
      Map<String,dynamic> responseBody=jsonDecode(response.body);
      for(var i in responseBody["data"]){
        agents.add(Agent.fromJson(i));
      }
      return agents;

    }else{
      throw Exception("status code = ${response.statusCode}");
    }
  }catch(error){
    throw Exception(error.toString());
  }

  }

}