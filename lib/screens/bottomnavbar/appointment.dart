import 'package:doctor/widgets/customappbar.dart';
import 'package:flutter/material.dart';



class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> with TickerProviderStateMixin {

TabController tabController;

@override
void initState() {
  tabController = TabController(length: 2, initialIndex: 0, vsync: this);
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff00BBDC),
        leading:  Icon(Icons.sort, color: Colors.white, size: 25.0),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size(0.0, 100.0),
          child: CustomAppBar(
            100.0,
            'Manage Your Appointment',
            TabBar(
              tabs: [
                Text('History'), Text('Upcoming')
              ],
              controller: tabController,
              labelColor: Colors.white,
              labelStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white30,
              unselectedLabelStyle: TextStyle(color: Colors.white30, fontSize: 17.0, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.white, width: 1.0)
              ),
            ),
            'Appointment'
          ),
        ),
      ),
      body: TabBarView(
        children: [
          Pervious(),
          Upcoming(),
        ],
        controller: tabController
      ),
    );
  }
}





class Pervious extends StatefulWidget {
  @override
  _PerviousState createState() => _PerviousState();
}

class _PerviousState extends State<Pervious> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 125.0,
                  width: MediaQuery.of(context).size.width/3.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('https://avatars.githubusercontent.com/u/44323531?s=460&u=4a0966bc4213dfd7da98c0ca07273948bc32bfad&v=4'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr: Bassel Allam',
                      style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, height: 1.5),
                    ),
                    Text(
                      'Dentist',
                      style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.bold, height: 1.5),
                    ),
                    Text(
                      '29 - Nov - 2020',
                      style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.bold, height: 1.5),
                    ),
                    Text(
                      'Revisit at:\n Mon 20 - Feb - 2021',
                      style: TextStyle(color: Color(0xff18435A), fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}




class Upcoming extends StatefulWidget {
  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}