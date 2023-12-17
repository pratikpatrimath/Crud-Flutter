import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/person_model.dart';

import 'services/api.dart';

class DisplayData extends StatefulWidget {
  const DisplayData({super.key});

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
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
            child: FutureBuilder(
                future: Api.getPerson(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<Person> pdata = snapshot.data;
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 30,
                            ),
                            title: Text("Name: ${pdata[index].name}"),
                            subtitle: Text("Mobile: ${pdata[index].mobile}"),
                            trailing: Text("Age: ${pdata[index].age}"),
                          );
                        });
                  } else {
                    return Text("No data found");
                  }
                }),
          )
        ]),
      ),
    );
  }
}
