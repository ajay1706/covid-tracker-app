class Data {
   int cases;

   int todayCases;
   int deaths;
   int todayDeaths;
   int recovered;
   int active;


//  Data({
//    this.cases,
//    this.todayCases,
//    this.deaths,
//    this.todayDeaths,
//    this.recovered,
//    this.active,
//    this.casesPerOneMillion,
//    this.deathsPerOneMillion,
//  });

   Data.fromJson(Map<String, dynamic> json)
   :
        cases= json['cases']??0,
        todayCases= json['todayCases']??0,
        deaths= json['deaths']??0,
        todayDeaths= json['todayDeaths']??0,
        recovered= json['recovered']??0,
        active= json['active']??0;


}
