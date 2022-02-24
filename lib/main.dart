import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 5, 172, 11),
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: const EdgeInsets.fromLTRB(40, 95, 40, 0),
                color: Color.fromARGB(255, 4, 185, 34),
                child: const Text(
                  "Scan Your QR_Code",
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(100),
              child: QrImage(
                data: "1234567890",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Scann your code"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            const ElevatedButton(
                onPressed: null, child: Text("Deleate your Scan"))
          ],
        ),
      ),
    );
  }
}
