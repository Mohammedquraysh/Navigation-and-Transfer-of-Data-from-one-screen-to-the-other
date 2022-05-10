import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.name, required this.age}) : super(key: key);
  final String name;
  final int age;

  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar: AppBar(
      title: Text('Second Screen',
      style: TextStyle(backgroundColor: Colors.orange
      ),
      ),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: name,
              hintStyle: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.normal,
                color: Colors.black54
              ),
              labelText: 'Name',
              labelStyle: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),

            ),
            keyboardType: TextInputType.text,


          ),

          ElevatedButton(onPressed: (){
            Navigator.pop(context, 3);
          },
            child: Text('Go back',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10.0)
            ),
          ),
        ],
      ),

    ),
  );
}
