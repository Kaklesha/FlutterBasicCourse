import 'package:flutter/material.dart';
import 'package:untitled/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late var data;
  late WorldTime wt;

  @override
  Widget build(BuildContext context) {

  //var  data =  ModalRoute.of(context)!.settings.arguments;

  data = ModalRoute.of(context)!.settings.arguments;
  wt = data["worldtime"];
  print(wt);

  //set bg
  String bgImage;
  if (wt.isDaytime) {
    bgImage = "https://kartinkof.club/uploads/posts/2022-06/thumbs/1655387445_1-kartinkof-club-p-kartinki-solnechnogo-dnya-1.jpg";
  } else {
    bgImage = "https://klike.net/uploads/posts/2020-04/1586162565_2.jpg";
  }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bgImage, ),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(child:
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/location");
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit location"),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    wt.location,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                wt.time,
                style: TextStyle(
                  fontSize: 66,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        )
        ),
      ),
    );
  }
}
