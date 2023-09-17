import 'package:flutter/material.dart';
import "package:http/http.dart";
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getTime() async {

    //simulate network request for a uaername
    // String username =  await Future.delayed(Duration(seconds: 3),(){
    //   return "yorys";

    // Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    //   Map data =  jsonDecode(response.body);
    //   print(data);
    // print(data['title']);

    // Response response = await get(Uri.parse('https://worldtimeapi.org/timezone/Europe/Saratov'));
    //   Map data =  jsonDecode(response.body);
    //

    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Europe/Saratov'));
    Map data = jsonDecode(response.body);
    //print(data);
    //get properties from
    String datetime = data["datetime"];
    String offset = data['utc_offset'].substring(1,3);
    print(datetime);
    print(offset);

    //create date time
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print (now);


  }



  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState fun");
    getTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('load')),
    );
  }
}
