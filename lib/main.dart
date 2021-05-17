import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Image.asset('assets/images/hamburger.png'),
          actions: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
                child: Image.asset('assets/images/SEARCH.png')),
          ],
          backgroundColor: Colors.grey[100],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Shop ',
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  'Application',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [buildFlatButtonHome(),buildFlatButtonHome(),buildFlatButtonHome()],
            )
          ],
        ),
      ),
    );
  }

  FlatButton buildFlatButtonHome() {
    return FlatButton(
      onPressed: () {
        print('b1 pressed');
      },
      child: Text(
        'Fashion',
        style: TextStyle(color: Colors.white),
      ),
      shape: StadiumBorder(),
      color: Colors.pink[100],
    );
  }
}
