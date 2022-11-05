import 'package:flutter/material.dart';

import '../custome_text.dart';

class RoleScreenChildIsNotExisted extends StatelessWidget {
  const RoleScreenChildIsNotExisted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CustomText(
      txt: "Sorry,There is no data",
      color: Colors.red,
    ));
  }
}
