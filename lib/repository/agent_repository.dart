import 'dart:convert';
import 'package:valorant_app/constants.dart';
import 'package:valorant_app/model/aget.dart';
import 'package:http/http.dart' as http;

class AgentRepository{


 Future<List<Agent>>getAgentsData()async{
    String url="$baseUrl/v1/agents";
    Uri uri=Uri.parse(url);
    http.Response response= await http.get(uri);
    List<Agent>agent=[];


    if(response.statusCode==200){
      Map<String,dynamic> responseBody=jsonDecode(response.body);
      for(var i in responseBody["data"]){
        agent.add(Agent.fromJson(i));
      }
       return agent;

    }else{
     throw Exception("there are an exception");
    }

  }

}