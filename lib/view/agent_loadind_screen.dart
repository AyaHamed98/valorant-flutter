import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/custome_text.dart';

class AgentLoadingWidget extends StatelessWidget {
  const AgentLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: height*.06,),
            CustomText(txt: "Select an agent ",fotSize: height*.06,),
            SizedBox(height: height*.04,),
            Expanded(
              child: GridView.builder(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .5,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder:(context,index)=> Container(
                  height: height * .5,
                  width: width * .42,
                  margin: const EdgeInsetsDirectional.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(height * .15)),
                    ),
                ),
                itemCount: 21,
              ),
            ),
          ],
        ) ,
      ),
    );;
  }
}
