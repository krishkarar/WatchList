import 'package:flutter/material.dart';
import 'package:watchlist/widgets/showTile.dart';
import 'package:watchlist/models/show_data.dart';
import 'package:provider/provider.dart';

class ShowView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<show_data>(
      builder: (context, showData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final currentShow = showData.showList[index];
            return ShowTile(
                isChecked: currentShow.isDone,
                showTitle: currentShow.name,
                onLongTapFn: (){
                  showData.deleteShow(index);
                },
                checkBoxCallBack: (bool? checkBoxState) {
                  if (checkBoxState != null) {
                    // setState(() {
                    //   // Provider.of<show_data>(context).shows[index].toggleDone();
                    //   // addShowScreen();
                    // });
                    showData.updateShow(currentShow);
                  }
                }

            );
          },
          itemCount: showData.showCount,
        );
      },

    );
  }
}
