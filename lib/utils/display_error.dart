/*
* display_error

* Widgets to be displayed upon unsuccessful/ empty fetching data from REST API.
*/

import 'package:flutter/material.dart';

// * utils import
import 'package:soil_moisture_app/utils/date_func.dart';
import 'package:soil_moisture_app/utils/sizes.dart';

// * No Internet Available upon Startup
class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Couldn\'t connect to internet.\nCheck your internet connection and restart the App.',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.display1.copyWith(
              fontSize: appWidth * 0.04,
            ),
      ),
    );
  }
}

// * No Data/ Empty Data
class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(appWidth * 0.01),
      alignment: Alignment.center,
      child: Text(
        'No Data Found.\nRefresh to try again or choose another date.',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.display1.copyWith(
              fontSize: appWidth * 0.04,
            ),
      ),
    );
  }
}

// * No Current Data/ Empty Current Data
class NoDataToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(appWidth * 0.03),
          alignment: Alignment.center,
          child: Text(
            'No Data for $fetchNowDate',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.display1.copyWith(
                  fontSize: appWidth * 0.04,
                ),
          ),
        ),
      ],
    );
  }
}
