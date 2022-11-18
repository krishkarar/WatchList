import 'package:flutter/material.dart';
import 'package:watchlist/models/show_data.dart';
import 'package:watchlist/widgets/showView.dart';
import 'package:watchlist/screens/add_show_screen.dart';
import 'package:provider/provider.dart';

class ShowsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          showModalBottomSheet(
            context: context,
            builder: (context) => addShowScreen(),
          );
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.white70,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Watchlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '${Provider.of<show_data>(context).showCount} shows',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: ShowView(),
          ))
        ],
      ),
    );
  }
}
