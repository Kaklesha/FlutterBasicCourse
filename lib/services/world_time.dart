import "package:http/http.dart";
import 'dart:convert';

class WorldTime{

  String location; //location name for th UI
 late String time; //the time in that location
  String flag; //url to an assets
  String url; //location url for api

  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {

  try {

    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
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

    //set the time prop
    time = now.toString();
  }
  catch (e){
    
    print('caught error: $e');
    time="could not get time data";
  }
    
   


  }

}

