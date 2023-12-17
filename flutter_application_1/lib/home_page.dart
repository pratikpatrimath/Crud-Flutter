import 'package:flutter/material.dart';
import 'package:flutter_application_1/create_page.dart';
import 'package:flutter_application_1/display_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purpleAccent])),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 200),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 150),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CreatePage()));
                        },
                        icon: Icon(Icons.create),
                        label: Text("Create")),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DisplayData()));
                        },
                        icon: Icon(Icons.read_more_rounded),
                        label: Text("Read")),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.update),
                        label: Text("Update")),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        label: Text("Delete")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
