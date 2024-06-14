import 'package:flutter/material.dart';
import 'package:qr_code_generator_and_scanner/generate_qr_code.dart';
import 'package:qr_code_generator_and_scanner/scan_qr_code.dart';

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
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(title: Text('QR Code Hub'),
      backgroundColor: Colors.blue,),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              setState((){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQrCode()));

              });
            }, child: Text('Scan QR Code')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed:(){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQrCode()));

              });
            }, child: Text('Generate QR Code'))
          ],
        ),
      ) ,
    );
  }
}