import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

 class _MyHomePageState extends State<MyHomePage> {
  get toolbarHeight => null;


  @override
    Widget build(BuildContext context){

  return Scaffold(
    drawer:   Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('ffcompetitive',style: TextStyle(fontSize:25 ),),
          ),
          ListTile(
            title: Text('players',style: TextStyle(fontSize:20 ),),

          ),
          ListTile(
            title: Text('news',style: TextStyle(fontSize:20 ),),

          ),
        ],
      ),
    ),
    appBar: AppBar(
      
      title:const Text('ffcompetitive',style: TextStyle(fontSize: 25),),
      
      
    ),
    body:GridView.count(
      crossAxisCount: 1,
      children: <Widget>[
        Image.asset('assets/images/unnamed.jpg'),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            ElevatedButton(onPressed: null,
              child: Image.asset('assets/images/Pinfo.png',width: 100,),
            ),
            ElevatedButton(onPressed: null,
              child: Image.asset('assets/images/news.jpg',width: 100,height: 180,),
            )
          ],
        )
      ],
    )




  );
  }
}