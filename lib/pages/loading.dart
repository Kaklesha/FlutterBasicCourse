import 'package:flutter/material.dart';
import 'package:untitled/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Saratov', flag: 'fff.jpg', url: 'Europe/Saratov');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "worldtime": instance,
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
      backgroundColor: Colors.blue,
      body: Center(child: SizedBox(height: 40, width: 40,
        child: CircularProgressIndicator(
            color: Colors.green[200],
        ),
      ))
    );
  }
}
