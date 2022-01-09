import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psynchron/screens/button.dart';
import 'package:psynchron/screens/logging.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'title'),
      );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build (BuildContext context) {

    Widget buildButton(
        String text,
        Color color,
        VoidCallback onClicked,
        ) =>
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: RaisedButton(
            child: Text(text),
            shape: StadiumBorder(),
            textColor: Colors.white,
            color: color,
            onPressed: onClicked,
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff05668D),
        elevation: 0.0,
        title: Text(
          'Psynchron',
          style: GoogleFonts.ubuntu(color: Colors.white,),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton('Log Medications', Color(0xff00A896), () => Navigator.push),
            buildButton('Symptoms', Color(0xff00A896), () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()),),),
            buildButton('Chat Now', Color(0xff00A896), () => Navigator.push),
            buildButton('Appointments', Color(0xff00A896), () => Navigator.push),
            buildButton('EMERGENCY', Colors.red, () => Navigator.push),
          ],
        ),
      ),
    );
  }
}