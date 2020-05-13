

import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController collegecontroller=TextEditingController();
  TextEditingController admncontroller=TextEditingController();
  TextEditingController agecontroller=TextEditingController();
  var name=[];
  var college=[];
  var admn=[];
  var age=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  hintText: "Name",
                ),
              ),              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: admncontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  hintText: "Admn no",
                ),
              ),              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  hintText: "Age",
                ),
              ),              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: collegecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  hintText: "College",
                ),
              ),
              RaisedButton(
                  onPressed: (){
                        var nm=namecontroller.text;
                        var ad=admncontroller.text;
                        var ag=agecontroller.text;
                        var coll=collegecontroller.text;
                        namecontroller.clear();
                        admncontroller.clear();
                        agecontroller.clear();
                        collegecontroller.clear();

                        setState(() {
                          name.add(nm);
                          admn.add(ad);
                          age.add(ag);
                          college.add(coll);
                        });



                      },
                child: Text("Add Data",style: TextStyle(color: Colors.black),),
              ),

              ListView.builder(
                  shrinkWrap: true,
                  itemCount: name.length==null ?0:name.length,
                  itemBuilder: (context,index){
              return Card(
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(Icons.person_pin),
                  trailing:
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        name.removeAt(index);
                        age.removeAt(index);
                        college.removeAt(index);
                        admn.removeAt(index);
                      });
                    },
                    child: Icon(Icons.delete,color: Colors.red,),
                  ),
                title: Text(name[index].toString()),
                  subtitle: Text("Admn: "+admn[index].toString()+"  Age: "+age[index].toString()+"  College: "+college[index].toString()),

                ),
              );

              }

              )
            ],
          ),
        ),

      ),
    );
  }
}
