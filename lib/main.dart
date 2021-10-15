import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Профиль'),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // SizedBox(
                //   height: 40,
                // ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                  'Имя',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                          SizedBox(
                  height: 5,
                ),
                          TextField(
                  decoration: InputDecoration(
                    hintText: 'Курьер',
                    filled: true,
                    fillColor: Colors.teal[50],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                          SizedBox(
                  height: 10,
                ),
                          Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                  textAlign: TextAlign.right,
                ),
                          SizedBox(
                  height: 5,
                ),
                          TextField(
                    decoration: InputDecoration(
                      hintText: '+77077077777',
                      filled: true,
                      fillColor: Colors.teal[50],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    keyboardType: TextInputType.number),
                          SizedBox(
                  height: 30,
                ),
                          submitButton()
              ],
                ),
                ),
                ),
    ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.home, size: 35),
            Icon(Icons.qr_code, size: 35),
            Icon(Icons.person, size: 35),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.teal,
          backgroundColor: Colors.white24,
          animationCurve: Curves.easeInOut,
          onTap: (index) {},
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}

Widget submitButton() {
  return ElevatedButton(
    onPressed: (){},
    child: new Text(
      'История добавления товара',
      style: TextStyle(
          fontSize: 15
      ),
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(350, 50),
      primary: Colors.teal,
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      ),
    ),
  );
}