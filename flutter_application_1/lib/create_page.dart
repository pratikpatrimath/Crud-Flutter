import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/api.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent])),
          ),
          Container(
            padding: EdgeInsets.only(top: 50, left: 165),
            child: Text(
              'Create',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
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
                  width: 250,
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 250,
                  child: TextField(
                    controller: mobileController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Mobile no",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 250,
                  child: TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "age",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        var data = {
                          "pname": nameController.text,
                          "pmobile": mobileController.text,
                          "page": ageController.text,
                        };
                        Api.addPerson(data);
                      },
                      icon: Icon(Icons.save),
                      label: Text("Save")),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
