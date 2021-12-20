import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bKash Manual',
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
      ),
      home: const MyHomePage(title: 'bKash Manual'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("bKash Manual"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [Container(),
              const SizedBox(height: 20.0),
              Container(
                height: 480.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  border: Border.all(color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(image: AssetImage("assets/bkash_payment_logo.png"),fit: BoxFit.cover,),
                        )),
                    SizedBox(height: 30.0),
                    Container(
                      height: 142.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: const [
                          SizedBox(height: 15.0),
                          Text("1. Go to bKash App", style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height: 3.0),
                          Text("2. Select 'Payment' option", style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height: 3.0),
                          Text("3. Enter number: 01798161323", style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height: 3.0),
                          Text("4. Enter amount", style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height: 3.0),
                          Text("5. Enter pin to confirm payment", style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    const Text("Enter Transaction ID", style: TextStyle(color: Colors.white, fontSize: 18)),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                      child:
                      Container(
                        height: 40.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:
                        const TextField(
                          textAlign: TextAlign.center,
                          cursorColor: Colors.pink,
                          decoration:
                          InputDecoration(
                            hintText: 'e.g 8XHE39433J',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    InkWell(
                      child: Container(
                        height: 40.0,
                        width: 80.0,
                        decoration: new BoxDecoration(
                          color: Colors.black.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:
                        Center(child: Text("CONFIRM", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
                      ),
                      onTap: () {
                        Get.snackbar(
                          "Thank You",
                          "We received your order",
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                        );
                        //Get.offAllNamed(AppRoutes.MAINSCREEN);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
