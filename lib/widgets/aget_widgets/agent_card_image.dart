import 'package:flutter/material.dart';
import '../../model/aget.dart';
import '../custome_text.dart';

class AgentCardImage extends StatelessWidget {
  const AgentCardImage({Key? key,required this.agentItem}) : super(key: key);
  final Agent agentItem;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return agentItem.bustPortrait != null
        ? _imageIsExisting(height)
        : _imageIsNotExisting();
  }


  Center _imageIsNotExisting() {
    return const Center(
      child: CustomText(
        txt: "\nNo image\n valipale \!",
        fotSize: 20,
        color: Colors.red,
      ),
    );
  }

  Padding _imageIsExisting(double height) {
    return Padding(
      padding:
      const EdgeInsetsDirectional.only(start: 50, bottom: 100),
      child: Image.network(
        agentItem.bustPortrait!,
        height: height * .7,
        fit: BoxFit.cover,
      ),
    );
  }
}
