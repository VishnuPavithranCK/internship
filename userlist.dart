

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profileinternship_app/createprofile.dart';
import 'package:profileinternship_app/main.dart';

class userlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("users"),
        backgroundColor: Colors.deepPurple,
        elevation: 2,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.filter_list),
          )
        ],
      ),
      body: Lists(),
      floatingActionButton: Builder(builder: (BuildContext context){
        return FloatingActionButton(onPressed: (){Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>createprofile()));
          
        },
        child:Icon(Icons.add) ,);
      }),
    );
  }
}

class Item {
  final String name;
  final String age;
  final String place;
  final String gender;
  final String image;

  Item(
      {this.name,
        this.age,
        this.place,
        this.gender,
        this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        name: 'John',
        age: "30",
        place: "America",
        gender: "male",
        image:
        "images/profile2.jpg"),
    Item(
        name: 'Mary',
        age: "23",
        place: "Canada",
        gender: "Female",
        image:
        "images/profile3.jpg"),
    Item(
        name: 'Maya',
        age: "32",
        place: "bangalore",
        gender: "Female",
        image:
        "images/profile3.jpg"),
    Item(
        name: 'Sagar',
        age: "25",
        place: "bangalore",
        gender: "male",
        image:
        "images/profile2.jpg"),
    Item(
        name: 'Kushi',
        age: "23",
        place: "Gadag",
        gender: "Female",
        image:
        "images/profile3.jpg"),
    Item(
        name: 'vishnu',
        age: "23",
        place: "bangalore",
        gender: "male",
        image:
        "images/profile2.jpg"),




  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(item.image),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      item.name,
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.age,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      item.place,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: <Widget>[
                        Text(
                          item.gender,
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          width: 5,
                        ),


                      ],
                    )
                  ],
                ),

              )
            ],
          ),
        );
      },
    );

  }

}
