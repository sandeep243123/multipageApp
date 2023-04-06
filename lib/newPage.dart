 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipage/main.dart';

class newPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Click to new Page',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: 'hello',),
            )
            );
          }, child: Text('next')),

        ],
      )
    );
  }

 }