import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchlist/models/show_data.dart';

class addShowScreen extends StatelessWidget {


  // final Function addShowCallback;
  //
  // addShowScreen({required this.addShowCallback});

  @override
  Widget build(BuildContext context) {

    late String newShowTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                'Add show',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              child: TextField(
                // controller: myController,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter show name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent, width: 5.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent, width: 5.0),
                  ),
                ),
                onChanged: (newText){
                    newShowTitle = newText;
                },
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
              child: TextButton(
                onPressed: () {
                  // addShowCallback(newShowTitle);
                  Provider.of<show_data>(context, listen: false).addShow(newShowTitle);
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent)),
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
