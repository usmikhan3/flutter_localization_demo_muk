import 'package:flutter/material.dart';
import 'package:flutter_multi_language/routes/route_name.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, settingRoute);
          },
          child: const Text("Settings Page"),
        ),
      ),
    );
  }
}
