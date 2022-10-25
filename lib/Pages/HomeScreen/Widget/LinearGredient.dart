import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Utilities/Colors.dart';

class LinearGredient extends StatelessWidget {
  const LinearGredient({super.key});

  @override
  Widget build(BuildContext context) {
    return VxAnimatedBox()
        .size(context.screenWidth, context.screenHeight)
        .withGradient(
          LinearGradient(
            colors: [
              AppColors.PrimaryColors,
              AppColors.SecondryColors,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        )
        .make();
  }
}
