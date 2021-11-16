import 'package:flutter/material.dart';
import 'package:profile_sandbox/widget.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final Color petampColor = const Color(0xff00AB66);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Color(0xff00AB66)
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: 500,
              height: 100,
              child: ProfileCard(name: 'NAKAMURA TAIKI', color: Colors.red)
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: allTracksButton(),
          ),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget allTracksButton() => ElevatedButton(
    onPressed: (){
      print("raisedButton");
    },
    style: ElevatedButton.styleFrom(
      primary: widget.petampColor,
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
    ),
    child: const Text(
      "Click me",
      style: TextStyle(color: Colors.white),
    ),
  );
}