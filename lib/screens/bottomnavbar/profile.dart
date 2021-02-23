import 'package:doctor/screens/bottomnavbar/drprofile.dart';
import 'package:doctor/widgets/customappbar.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CustomAppBar(
                175.0,
                '',
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      minRadius: 40.0,
                      maxRadius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/44323531?s=460&u=4a0966bc4213dfd7da98c0ca07273948bc32bfad&v=4'),
                    ),
                    title: Text(
                      'Bassel Allam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: GestureDetector(
                      onTap: () {
                        //Navigator.push(context,
                        //  MaterialPageRoute(builder: context) => drprofile());
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DrProfile()));
                      },
                      child: Text(
                        'View Profile',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                'Profile'),
            profileItem(Icons.motorcycle, 'Medicine Delivery'),
            profileItem(Icons.favorite, 'Favourite'),
            profileItem(Icons.settings, 'Settings'),
            profileItem(Icons.logout, 'Logout'),
          ],
        ),
      ),
    );
  }

  profileItem(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black, size: 25.0),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.navigate_next, color: Colors.grey, size: 20.0),
      ),
    );
  }
}