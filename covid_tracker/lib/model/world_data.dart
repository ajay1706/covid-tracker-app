class WorldData {
  int cases;

  int deaths;

  int recovered;
  int updated;

  int active;

//  WorldData(
//      {this.cases, this.recovered, this.active, this.deaths, this.updated});

  WorldData.fromJson(Map<String, dynamic> json)

      : cases = json['cases'] ?? 0,
        deaths= json['deaths'] ?? 0,
        recovered= json['recovered']??0,
        updated= json['updated']??0,
        active= json['active']??0;


}