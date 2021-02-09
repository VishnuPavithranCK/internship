import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profileinternship_app/userlist.dart';

class createprofile extends StatefulWidget {
  @override
  _createprofileState createState() => _createprofileState();
}

class _createprofileState extends State<createprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            imageprofile(),
            SizedBox(
              height: 10.0,
            ),
            nametextfield(),
            SizedBox(
              height: 10.0,
            ),
            dobtextfield(),
            SizedBox(
              height: 10.0,
            ),
            placetextfield(),
            SizedBox(
              height: 10.0,
            ),
            gendertextfield(),
            SizedBox(
              height: 10.0,
            ),
            emailtextfield(),
          ],
        ),
      ),
    );
  }

  Widget imageprofile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/profile3.jpg'),
            backgroundColor: Colors.green,
            
          ),
          Positioned(
              bottom: 20.0,
              right: 20.0,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (builder) => bottomsheet());
                },

                child: Icon(Icons.camera_alt,
                  color: Colors.teal,
                  size: 20.0,),
              ))
        ],

      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text("choose profile photo",
            style: TextStyle(
              fontSize: 20.0,

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(icon: Icon(Icons.camera),
                onPressed: () {},
                label: Text("camera"),
              ),
              FlatButton.icon(icon: Icon(Icons.image),
                onPressed: () {},
                label: Text("gallery"),

              ),
            ],
          ),

        ],
      ),
    );
  }

  Widget nametextfield() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
                width: 2,
              )
          ),
          prefixIcon: Icon(Icons.verified_user,
            color: Colors.green,),
          labelText: "Name",
          helperText: "name cant be empty",
          hintText: "Vishnu pavithran"
      ),
    );
  }

  Widget dobtextfield() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )
        ),
        prefixIcon: Icon(Icons.date_range,
          color: Colors.deepPurple,),
        labelText: "DOB",
        helperText: "dd/mm/yyyy",
      ),
    );
  }

  Widget placetextfield() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )
        ),
        prefixIcon: Icon(Icons.place,
          color: Colors.deepPurple,),
        labelText: "Place",
        helperText: "city",

      ),
    );
  }

  Widget gendertextfield() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )
        ),
        prefixIcon: Icon(Icons.person,
          color: Colors.deepPurple,),
        labelText: "Gender",
        helperText: "M/F",

      ),
    );
  }


  Widget emailtextfield() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )
        ),
        prefixIcon: Icon(Icons.email,
          color: Colors.deepPurple,),
        labelText: "email",
        helperText: "@example.com",

      ),
    );
  }


}
