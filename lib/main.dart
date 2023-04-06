import 'package:flutter/material.dart';
import 'package:multipage/newPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: newPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrData=[
    {
      'Name':'Raj',
      'Phone':'12345667',
      'unread':'1'
    },
    {
      'Name':'Shivam',
      'Phone':'12345667',
      'unread':'4'
    },
    {
      'Name':'Rahul',
      'Phone':'12345667',
      'unread':'2'
    },
    {
      'Name':'Ravi',
      'Phone':'12345667',
      'unread':'3'
    },
    {
      'Name':'Sandeep',
      'Phone':'12345667',
      'unread':'2'
    },
    {
      'Name':'RajKumar',
      'Phone':'12345667',
      'unread':'5'
    },
    {
      'Name':'Rahul',
      'Phone':'12345667',
      'unread':'2'
    },
    {
      'Name':'Ravi',
      'Phone':'12345667',
      'unread':'3'
    },
    {
      'Name':'Sandeep',
      'Phone':'12345667',
      'unread':'2'
    },
    {
      'Name':'RajKumar',
      'Phone':'12345667',
      'unread':'5'
    },

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: ListView (
          children: arrData.map((value)=>
            ListTile(
            leading:Icon(Icons.account_circle),
            title: Text(value['Name'].toString()),
              subtitle: Text(value['Phone'].toString()),
              trailing: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                  child: Text(value['unread'].toString())),

            )
           ).toList(),
        ),
      ),
    );
  }
}


