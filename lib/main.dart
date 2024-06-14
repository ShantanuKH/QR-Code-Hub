import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Hub',
      theme: ThemeData(
      
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('QR Code Hub'),
      backgroundColor: Colors.blue,),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              setState((){


              });
            }, child: Text('Scan QR Code'))
            SizedBox(height: 40,),
            ElevatedButton(onPressed:(){
              setState(() {
                

              });
            }, child: Text('Generate QR Code'))
          ],
        ),
      ) ,
    );
  }
}