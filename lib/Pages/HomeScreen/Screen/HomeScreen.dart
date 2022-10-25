import 'package:ai_radio_fm/Utilities/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Model/RadioModel.dart';
import '../Widget/LinearGredient.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RadioModel> TheRadioList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FetchRadios();
  }

  FetchRadios() async {
    final RadioJson = await rootBundle.loadString("Assets/radio.json");
    // TheRadioList .add(value)
    // print(RadioModel.fromJson(RadioJson));
    print(RadioJson);
    // print(RadioJson);
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        body: Stack(
          children: [
            LinearGredient(),
            AppBar(
              title: "Ai Radio".text.xl4.bold.white.make().shimmer(
                    primaryColor: Vx.purple300,
                    secondaryColor: Colors.white,
                    // duration: Duration(seconds: 10),
                    // count: 10,
                    // showAnimation: false,
                    // showGradient: true,
                    // gradient: LinearGradient(colors: [
                    //   Colors.white,
                    //   Colors.black,
                    // ],),
                  ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ).h(100).p(16),
          ],
        ),
      ),
    );
  }
}
