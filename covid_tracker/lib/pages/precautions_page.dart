import 'package:covidtracker/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreventionStepsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(54, 83, 162, 1),
        elevation: 0,
        title: Text("Steps to prevent",
        style: Styles.appBarStyle,),
        leading: IconButton(icon: platform==TargetPlatform.iOS  ? Icon(Icons.arrow_back_ios,color:  Color.fromRGBO(255, 255, 255, 1),) : Icon(Icons.arrow_back,color:  Color.fromRGBO(255, 255, 255, 1),), onPressed: ()=> Navigator.pop(context)),
      ),
      backgroundColor: Color.fromRGBO(31, 27, 50, 1),
      body: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              width: 2.4,
              color: Color.fromRGBO(255, 255, 255, 1),
            )
        ),
        child: ListView(

          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
                        Container(
            height:MediaQuery.of(context).size.height  ,

              child:   Column(
            //    scrollDirection: Axis.vertical,
            //    shrinkWrap: true,
                children: <Widget>[

                    Expanded(
                      child: Text("Protect yourself and others from the coronavirus (COVID-19)",
                 textAlign: TextAlign.center,
                      style: Styles.headingStyle,),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.hands,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("Wash your hands frequently with soap and wateror alcohol based rub.",
                               maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                 fontSize:  AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                              child: Icon(FontAwesomeIcons.user,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("Maintain Social Distancing (minimum 1 meter).",
                                maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                    fontSize:  AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.solidEye,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("Avoid tocuing eyes, nose and mouth.",
                                maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                    fontSize:   AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.disease,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("Practise respiratory hygiene.",
                                maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                    fontSize:   AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.clinicMedical,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("If you have Fever, cough, difficulty breathing, seek medical care early",
                                maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                    fontSize:   AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.info,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(

                              child: Text("Stay Informed, follow advice from your healthcare provider.",
                                maxLines:   3,
                                softWrap: true,
                                style: Styles.headingStyle.copyWith(
                                    fontSize:  AppBar().preferredSize.height * 0.23
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text("Stay Home\n"
                          "Stay Safe !",
                        textAlign: TextAlign.center,
                        style: Styles.mottoStyle),
                    ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
