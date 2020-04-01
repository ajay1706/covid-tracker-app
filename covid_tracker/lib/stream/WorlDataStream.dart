import 'dart:async';

import 'package:covidtracker/ApiCall/network_provider.dart';
import 'package:covidtracker/model/datamodel.dart';
import 'package:covidtracker/model/world_data.dart';

class WorldDataStream{
  final StreamController<WorldData> _controller = StreamController<WorldData>();
  final StreamController<Data> dataController = StreamController<Data>();

  Stream<WorldData> get worldData => _controller.stream;

  Stream<Data> get data => dataController.stream;

  Stream<WorldData> get worldDatalists async*{
    yield await ApiProvider.fetchallData();

  }
  Stream<Data> get indiaDataLists async*{
    yield await ApiProvider.fetchIndiaData();

  }

}