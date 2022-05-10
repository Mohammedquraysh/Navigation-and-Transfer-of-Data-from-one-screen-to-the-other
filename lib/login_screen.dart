import 'package:flutter/material.dart';
import 'package:navigations/second_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Login Screen'),
      backgroundColor: Colors.green,
      centerTitle: true,
    ),
    body: Center(
      child: ElevatedButton(onPressed: ()  {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(
          name: 'Mohammed Quraysh',
          age: 12,
         )
        )
        );
       /** this can be used if  we are getting data from another screen*/
        // final data = await Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(
        //   name: 'Mohammed Quraysh',
        //   age: 12,
        // ))
        // );
        // print(data);
      },
        child: Text('Login to the next Screen',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10.0)
        ),
      ),
    ),

  );
}
