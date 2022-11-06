import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:valorant_app/view/agent_screen.dart';
import 'package:valorant_app/widgets/custom_image.dart';
import 'package:valorant_app/widgets/custome_text.dart';

import '../helper/local_storage/storage_firstopen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black,
        pages: _pagesList(),
        done: const CustomText(txt: "Done"),
        onDone:()=>goToAgentScreen(context),
        skip: const CustomText(txt: "Skip",),
        showSkipButton: true,
        onSkip:()=>goToAgentScreen(context),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
        dotsDecorator:_getDotsDecorator(width) ,
        dotsContainerDecorator: _getDotsContainerDecorator(),
      ),
    );
  }

  List<PageViewModel> _pagesList() {
    return [
        PageViewModel(
          title: "WE ARE VALORANT",
          body: "VALORANT is a character-based 5v5 tactical shooter set on the global stage. OutwitCustomTextand outshine your competition with tactical abilitiesCustomTextunplay, and adaptive teamwork.",
          image:const CustomImage(imagePath: "assets/images/valorant_logo.webp",),
          decoration: _getPageDecoration()
        ),
        PageViewModel(
            title: "DEFY THE LIMITS",
            body: "Blend your style and experience on a global, competitive stage. You have 13 rounds to attack and defend your side using sharp gunplay and tactical abilities. And, with one life per-round, you'll need to think faster than your opponent if you want to survive. Take on foes across Competitive and Unranked modes as well as Deathmatch and Spike Rush.",
            image: const CustomImage(imagePath: "assets/images/download (1).jpeg",),
            decoration: _getPageDecoration()
        ),
        PageViewModel(
          title: "AGENTS",
          body: "Agents are the playable characters in VALORANT, representing an agent of the VALORANT Protocol. Each agent serves as a different class with four abilities and are mostly unlocked by progressing through their Contract.",
          image:const CustomImage(imagePath: "assets/images/agents.jpg",),
          decoration: _getPageDecoration()
        ),

      ];
  }

  PageDecoration _getPageDecoration(){
    return const PageDecoration(
      bodyTextStyle: TextStyle(color: Colors.white),
      imageAlignment: Alignment.bottomCenter,
      pageColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
      imageFlex: 3,
      bodyFlex: 2

    );
  }

  DotsDecorator _getDotsDecorator(width){
    return DotsDecorator(
        color: Colors.white,
      size: Size(width*.04,width*.04),
      activeColor: Colors.red,
      activeSize: Size(width*.09,width*.05),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(width*.05 )
      )
      
    );
  }

  Decoration _getDotsContainerDecorator(){
    return const ShapeDecoration(
        color: Colors.black12,
        shape:RoundedRectangleBorder(

        ),
    );
  }

  void goToAgentScreen(context){
    FirstOpen().saveFirstOpen();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AgentScreen()));
  }

}
