import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

int counter=10;

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
