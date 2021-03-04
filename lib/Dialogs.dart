import 'package:flutter/material.dart';

class Accepted extends StatefulWidget {
  @override
  _AcceptedState createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 260.0,
        height: 230.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            right: -40.0,
            top: -40.0,
            child: InkResponse(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                child: Icon(Icons.close),
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Approve Ad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Are you sure you want to approve this ad?"),
              Text("Note: This action will notify user the ad is approved and the ad is visible to users",style: TextStyle(fontSize: 10,color: Colors.red),),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 30,
                  child: Text(
                    "Approve",
                    style: new TextStyle(fontSize: 15, color: Colors.white, ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10.0))),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}

class Rejected extends StatefulWidget {
  @override
  _RejectedState createState() => _RejectedState();
}

class _RejectedState extends State<Rejected> {

  String dropdownval;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 260.0,
        height: 230.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            right: -40.0,
            top: -40.0,
            child: InkResponse(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                child: Icon(Icons.close),
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Reject Ad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Are you sure you want to reject this ad?"),
              Text("Pick Ad rejection reason:"),
              DropdownButton(
                value: dropdownval,
                underline: Container(
                  height: 1,
                  color: Colors.grey,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownval = newValue;
                  });
                },
                items: <String>['This is reason One', 'This is reason Two', 'This is reason Free', 'This is reason Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text("Note: This action will notify user the ad is rejected",style: TextStyle(fontSize: 10,color: Colors.red),),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 30,
                  child: Text(
                    "Reject",
                    style: new TextStyle(fontSize: 15, color: Colors.white, ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10.0))),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
