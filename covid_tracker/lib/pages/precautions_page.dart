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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height -  AppBar().preferredSize.height - MediaQuery.of(context).padding.bottom -MediaQuery.of(context).padding.top -MediaQuery.of(context).padding.right - MediaQuery.of(context).padding.left,
            decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                width: 2.4,

                color: Color.fromRGBO(255, 255, 255, 1),

              )
            ),
child: Column(
  children: <Widget>[

    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Text("Protect yourself and others from the coronavirus (COVID-19)",
   textAlign: TextAlign.center,
      style: Styles.headingStyle,),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.hands,color: Color.fromRGBO(255, 255, 255, 1),size: 45,),
              )),
          SizedBox(
            width: 30,
          ),
          Flexible(
            flex: 7,
            child: Text("Wash your hands frequently with soap and wateror alcohol based rub.",
             maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
               fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                child: Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.user,color: Color.fromRGBO(255, 255, 255, 1),size: 18,),
                    Icon(FontAwesomeIcons.minus,color: Color.fromRGBO(255, 255, 255, 1),size: 15,),
                    Icon(FontAwesomeIcons.user,color: Color.fromRGBO(255, 255, 255, 1),size: 18,),
                  ],
                ),
              )),
          SizedBox(
            width: 8,
          ),
          Flexible(
            flex: 7,
            child: Text("Maintain Social Distancing (minimum 1 meter).",
              maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
                  fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.solidEye,color: Color.fromRGBO(255, 255, 255, 1),size: 45,),
              )),
          SizedBox(
            width: 30,
          ),
          Flexible(
            flex: 7,
            child: Text("Avoid tocuing eyes, nose and mouth.",
              maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
                  fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.disease,color: Color.fromRGBO(255, 255, 255, 1),size: 45,),
              )),
          SizedBox(
            width: 30,
          ),
          Flexible(
            flex: 7,
            child: Text("Practise respiratory hygiene.",
              maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
                  fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.clinicMedical,color: Color.fromRGBO(255, 255, 255, 1),size: 45,),
              )),
          SizedBox(
            width: 30,
          ),
          Flexible(
            flex: 7,
            child: Text("If you have Fever, cough, difficulty breathing, seek medical care early",
              maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
                  fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Flexible(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.info,color: Color.fromRGBO(255, 255, 255, 1),size: 45,),
              )),
          SizedBox(
            width: 30,
          ),
          Flexible(
            flex: 7,
            child: Text("Stay Informed, follow advice from your healthcare provider.",
              maxLines:   3,
              softWrap: true,
              style: Styles.headingStyle.copyWith(
                  fontSize: 16
              ),),
          ),
        ],
      ),
    ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
        child: Text("Stay Home\n"
            "Stay Safe !",
          textAlign: TextAlign.center,
          style: Styles.mottoStyle),
      ),
    ),
  ],
),

          )

        ],
      ),
    );
  }
}
