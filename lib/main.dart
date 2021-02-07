import 'package:flutter/material.dart';



void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}






class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Map<int, List> itemData = {
  0 : [
    'Settings',
    'Edit your app Settings',
    Icons.settings
  ],
  1 : [
    'My Account',
    'see your account data',
    Icons.account_circle
  ],
  2 : [
    'Contact Us',
    'Contact Us to get help',
    Icons.phone
  ],
  3 : [
    'About Us',
    'know more about us',
    Icons.info
  ],
  4 : [
    'Follow U',
    'Follow Us on social acconts',
    Icons.email
  ]
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome Yad',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black, size: 20.0),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: itemData.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: ListTile(
                leading: Icon(itemData[index][2], color: Colors.black, size: 20.0),
                title: Text(itemData[index][0], style: TextStyle(color: Colors.black, fontSize: 20.0)),
                subtitle: Text(itemData[index][1], style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20.0),
              ),
            );
          },
        ),
      ),
    );
  }
}