//Surf Rental Service website and app
import 'package:SurfOnWheel/Pages/SurfCamps.dart';
import 'package:SurfOnWheel/Pages/SurfHome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
  // runApp(
  //   MaterialApp(
  //     routes: <String, WidgetBuilder>{
  //       '/': (context) => MyApp(),
  //       '/surfboardhome': (context) => SurfBoardHome(),
  //       '/paddleboardhome': (context) => SurfBoardHome(),
  //       '/surfcamphome': (context) => SurfCampHome(),
  //     },
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        //'/': (context) => MyApp(),
        '/surfboardhome': (context) => SurfBoardHome(),
        '/paddleboardhome': (context) => SurfBoardHome(),
        '/surfcamphome': (context) => SurfCampHome(),
      },
      title: 'Surf On Wheel',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Surf On Wheel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                //fontFamily: Fon
              ),
            ),
            centerTitle: false,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 25.0,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ],
            floating: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                //'https://firebasestorage.googleapis.com/v0/b/negoc8r-dev.appspot.com/o/SurfOnWheel%2FSliverAppbarHomeImg-2.jpg?alt=media&token=61f208ff-535e-45f7-b42d-887703a37902',
                'https://firebasestorage.googleapis.com/v0/b/negoc8r-dev.appspot.com/o/SurfOnWheel%2FSliverAppbarHomeImg-3.jpg?alt=media&token=d0ec1383-c3f3-418d-a25f-5f8417ed1749',
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildListDelegate(
              [
                // DefaultTextStyle(
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //     child: null),
                InkWell(
                  child: Container(
                    color: Colors.blue[600],
                    child: Text(
                      'Rent Surf Board',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/surfboardhome');
                  },
                ),
                InkWell(
                  child: Container(
                    color: Colors.white,
                    //padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Rent Paddle Board',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/paddleboardhome');
                  },
                ),
                Container(
                  color: Colors.blue[600],
                  child: Text(
                    'Join Surf-camp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      'Check Offers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/surfcamphome');
                  },
                ),
                Container(
                  color: Colors.blue[300],
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
