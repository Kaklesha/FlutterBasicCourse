import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    //simulate network request for a uaername
    await Future.delayed(Duration(seconds: 3),(){
      print("yoshi");

    });
    //simulate network request TO GET BIO OD THE USERNAME
    Future.delayed(Duration(seconds: 2),(){
      print("vego, musician ");

    });


    print("STATEMENT ");
  }

  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState fun");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("initState fun2");
    return Scaffold(
      body:

      Column(
        children: [
          SafeArea(child: TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.edit),
            label: Text("Backlocation"),
          ),),
          ElevatedButton(onPressed: (){
            setState(() {
              counter+=1;

            });
            print(counter);
          }, child: Text("$counter Click me"),)
        ],
      ),
    );
  }
}
