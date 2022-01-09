import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Stack(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Column(
                            children: [
                              Expanded(child: Container(color: Colors.grey,)),
                              Expanded(child: Container(color: Colors.orange,)),
                              Expanded(child: Container(color: Colors.blueAccent,)),
                              Expanded(child: Container(color: Colors.pinkAccent,))
                            ],
                          )),
                          Expanded(flex: 2, child: Column(
                            children: [
                              Expanded(flex: 2, child: Container(color: Colors.lightBlueAccent,)),
                              Expanded(child: Row(
                                children: [
                                  Expanded(child: Container(color: Colors.greenAccent,),),
                                  Expanded(child: Container(color: Colors.yellow,),)
                                ],
                              ))
                            ],
                          ))
                        ],
                      ),),
                      Expanded(child: Container(color: Colors.black,)),
                      Expanded(child: Container(color: Colors.yellow,)),
                      Expanded(child: Container(color: Colors.white,))
                    ],
                  )
              ),
              Expanded(
                  flex: 6,
                  child: Container(color: Colors.pinkAccent,)
              ),
              Container(width: 10,),
              Expanded(
                  flex: 3,
                  child: Container(color: Colors.pinkAccent,)
              ),
            ],
          ),),
          new Positioned(child: Container(color: Color.fromRGBO(0, 0, 0, 0.4), width: size.width / 3, height: size.height / 6,), top: size.height / 2 + 30, left: 30,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Home',
        child: const Icon(Icons.home),
      ),
    );
  }
}
