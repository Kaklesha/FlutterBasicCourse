import 'package:flutter/material.dart';
import 'package:untitled/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Saratov', flag: 'fff.jpg', url: 'Europe/Saratov');
    await instance.getTime();
     print(instance.time);
    print('ddd');
    setState(() {
      time=instance.time;
    });
  }



  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState fun");
    setupWorldTime();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      )),
    );
  }
}
