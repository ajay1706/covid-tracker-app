import 'dart:convert';

import 'package:covidtracker/model/datamodel.dart';
import 'package:covidtracker/stream/WorlDataStream.dart';
import 'package:covidtracker/utils/styles.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:pie_chart/pie_chart.dart';



class IndiaPage extends StatefulWidget {
  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {
//  final String indiaUrl = "https://corona.lmao.ninja/countries/India";
//  Future<Data> fetchIndiaData() async {
//    final response = await http.get(indiaUrl);
//    if (response.statusCode == 200) {
//      // If the call to the server was successful, parse the JSON.
//      print(
//          "data from thw world is ${Data.fromJson(json.decode(response.body))}");
//      return Data.fromJson(json.decode(response.body));
//    } else {
//      // If that call was not successful, throw an error.
//      throw Exception('Failed to load post');
//    }
//  }
  WorldDataStream _dataStream = new WorldDataStream();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 27, 50, 1),
      body: RefreshIndicator(
        onRefresh: _onrefresh,
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.globe,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(
                    width: 10,
                  ),

                  Text(
                    "COVID tracker in India",
                    style: Styles.lineStyle,
                  ),
                ],
              ),
            ),
            StreamBuilder<Data>(
                stream: _dataStream.indiaDataLists,
                builder: (context, snapshot){

//                print("Snapshot data of india ${snapshot.data}");

                  const List<Color> defaultColorList = [
                    Color.fromRGBO(226, 82, 65, 1),
                    Color.fromRGBO(103, 172, 91, 1),
                    Color.fromRGBO(30, 87, 150, 1),
                    Color.fromRGBO(116, 86, 74, 1),
                    Color.fromRGBO(43, 103, 92, 1),
                    Color.fromRGBO(73, 90, 99, 1),
                  ];


                  switch(snapshot.connectionState){
                    case ConnectionState.none:
                      {
                        return   Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height - 100 ,
                            child: FlareActor(
                              'assets/dotloader.flr',
                              animation: 'Loading',
                              fit: BoxFit.none,
                            ),
                          ),
                        );
                      }
                      break;
                    case ConnectionState.waiting:
                      {
                        return   Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery
                                .of(context)
                                .size
                                .height -100 ,
//                          height: MediaQuery.of(context).size.height * 0.15,
                            child: FlareActor(
                              'assets/dotloader.flr',
                              animation: 'Loading',
                              fit: BoxFit.none,
                            ),
                          ),
                        );
                      }
                      break;
                    case ConnectionState.active:
                      {
                        return   Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery
                                .of(context)
                                .size
                                .height-100 ,
//                          height: MediaQuery.of(context).size.height * 0.15,
                            child: FlareActor(
                              'assets/dotloader.flr',
                              animation: 'Loading',
                              fit: BoxFit.none,
                            ),
                          ),
                        );
                      }
                      break;
                    case ConnectionState.done:
                    {
                 if(snapshot.hasData){
                   Map<String, double> dataMap = new Map();
                   dataMap.putIfAbsent("Total cases",
                           () => snapshot.data.cases.toDouble() / 100);
                   dataMap.putIfAbsent("Active cases",
                           () => snapshot.data.active.toDouble() / 100);
                   dataMap.putIfAbsent("Total deaths",
                           () => snapshot.data.deaths.toDouble() / 100);
                   dataMap.putIfAbsent("Recovered cases",
                           () => snapshot.data.recovered.toDouble() / 100);
                   dataMap.putIfAbsent("Today's cases",
                           () => snapshot.data.todayCases.toDouble() / 100);
                   dataMap.putIfAbsent("Today's deaths",
                           () => snapshot.data.todayDeaths.toDouble() / 100);
                   return    Wrap(
                     children: <Widget>[

                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,
                         margin: const EdgeInsets.symmetric(
                             horizontal: 4, vertical: 2),
                         child: Card(
                           color: Color.fromRGBO(226, 82, 65, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 "Total cases",
                                 maxLines: 1,
                                 style: Styles.activeStyle,
                               ),
                               Text(
                                 "${snapshot.data.cases}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,

                         child: Card(
                           color: Color.fromRGBO(103, 172, 91, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 "Active cases",
                                 maxLines: 1,
                                 style: Styles.activeStyle,
                               ),
                               Text(
                                 "${snapshot.data.active}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),

                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,
                         margin: const EdgeInsets.symmetric(
                             horizontal: 4, vertical: 2),
                         child: Card(
                           color: Color.fromRGBO(30, 87, 150, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 "Death cases",
                                 maxLines: 1,
                                 style: Styles.activeStyle,
                               ),
                               Text(
                                 "${snapshot.data.deaths}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,

                         child: Card(
                           color: Color.fromRGBO(116, 86, 74, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceAround,
                             children: <Widget>[
                               Column(
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(
                                     "Recovered",
                                     maxLines: 2,
                                     softWrap: true,
                                     style: Styles.activeStyle,
                                   ),
                                   Text(
                                     "cases",
                                     maxLines: 2,
                                     softWrap: true,
                                     style: Styles.activeStyle,
                                   ),
                                 ],
                               ),
                               Text(
                                 "${snapshot.data.recovered}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,
                         margin: const EdgeInsets.symmetric(
                             horizontal: 4, vertical: 2),
                         child: Card(
                           color: Color.fromRGBO(43, 103, 92, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 "Today's cases",
                                 maxLines: 1,
                                 style: Styles.activeStyle,
                               ),
                               Text(
                                 "${snapshot.data.todayCases}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.48,
                         height: MediaQuery.of(context).size.height * 0.08,

                         child: Card(
                           color: Color.fromRGBO(73, 90, 99, 1),
                           elevation: 5,
                           child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 "Today's deaths",
                                 maxLines: 1,
                                 style: Styles.activeStyle,
                               ),
                               Text(
                                 "${snapshot.data.todayDeaths}",
                                 style: Styles.numberStyle,
                                 maxLines: 1,
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         height: MediaQuery.of(context).size.height * 0.5,
                         child: Center(
                           child: PieChart(
                             dataMap: dataMap,
                             animationDuration:
                             Duration(milliseconds: 800),
                             chartLegendSpacing: 32.0,
                             chartRadius:
                             MediaQuery.of(context).size.width / 1.5,
                             showChartValuesInPercentage: true,
                             showChartValues: true,
                             showChartValuesOutside: true,
                             chartValueBackgroundColor: Colors.white,
                             colorList: defaultColorList,
                             showLegends: true,
                             legendStyle:
                             Styles.activeStyle.copyWith(fontSize: 15),
                             legendPosition: LegendPosition.bottom,
                             decimalPlaces: 1,
                             showChartValueLabel: true,
                             initialAngle: 0,
                             chartValueStyle:
                             defaultChartValueStyle.copyWith(
                               color:
                               Colors.blueGrey[900].withOpacity(0.9),
                             ),
                             chartType: ChartType.disc,
                           ),
                         ),
                       )

//                            Center(
//                              child: FutureBuilder<Data>(
//                                  future: fetchIndia(),
//                                  builder: (context, snapshot) {
//                                    if (snapshot.hasData) {
//                                      return Column(
//                                        children: <Widget>[
//                                          Text(
//                                            '${snapshot.data.cases},',
//                                            style: Styles.casesStyle,
//                                          ),
//                                          Text('${snapshot.data.deaths}'),
//                                          Text('${snapshot.data.active}'),
//                                          Text(
//                                              '${snapshot.data.deathsPerOneMillion}'),
//                                          Text('${snapshot.data.recovered}'),
//                                          Text('${snapshot.data.todayDeaths}'),
//                                          Text('${snapshot.data.todayCases}'),
//                                          Text(
//                                              '${snapshot.data.casesPerOneMillion}'),
//                                        ],
//                                      );
//                                    } else {
//                                      return Center(
//                                        child: Container(
//                                          height: MediaQuery.of(context)
//                                                  .size
//                                                  .height *
//                                              0.15,
//                                          child: FlareActor(
//                                            'assets/loading2.flr',
//                                            animation: 'load',
//                                            fit: BoxFit.none,
//                                          ),
//                                        ),
//                                      );
//                                    }
//                                    print(snapshot.data.cases);
//                                  }),
//                            )
                     ],
                   );
                 }
                 else{
                   return  Center(
                     child:Container(
                       alignment: Alignment.center,
                       height: MediaQuery.of(context).size.height-100 ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Icon(Icons.signal_wifi_off,size: 60,color: Colors.white,),
                           Text("Check your Internet Connection",
                             softWrap: true,
                             maxLines: 2,
                             style: Styles.lineStyle,)
                         ],
                       ),
                     ) ,
                   );;
                 }
                    }
                      break;
                  }

                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onrefresh,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),

        child: Icon(Icons.refresh,
          color:Color.fromRGBO(54, 83, 162, 1) ,),
      ),
    );
  }
  Future<void> _onrefresh() async {
    await new Future.delayed(new Duration(seconds: 3));

    setState(() {

    });

    return null;
  }
}
