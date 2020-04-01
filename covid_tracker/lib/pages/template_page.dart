import 'package:covidtracker/pages/precautions_page.dart';
import 'package:covidtracker/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IndiaPage.dart';
import 'homepage.dart';

class TemplatePage extends StatefulWidget {
  static const routeName = '/templatepage';

  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), IndiaPage()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(54, 83, 162, 1),
          title: Text(
            "COVID-19 Tracker",
            style: Styles.appBarStyle,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.medkit),
                  onPressed: () {

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => PreventionStepsPage()));
                  }),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 254, 255, 1),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          backgroundColor: Colors.white70,
          selectedItemColor: Color.fromRGBO(54, 83, 162, 1),
          unselectedItemColor: Colors.black38,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
          elevation: 2,
          selectedFontSize: 10,
          onTap: onTabTapped,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          // new
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.globe,
                size: 28,
              ),
              title: Text('World Data'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/india.png',
              ),
              title: Text('India'),
            ),
          ]),
    );
  }
}
