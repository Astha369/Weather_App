//{"coord":{"lon":-0.1257,"lat":51.5085},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],
//"base":"stations","main":{"temp":7.3,"feels_like":6.5,"temp_min":5.99,"temp_max":8.23,"pressure":1027,"humidity":87},"visibility":10000,"wind":
// {"speed":1.56,"deg":193,"gust":3.2},"clouds":{"all":56},"dt":1647289514,"sys":{"type":2,"id":2019646,"country":"GB","sunrise":1647238639,"sunset"
// :1647280939},"timezone":0,"id":2643743,"name":"London","cod":200}

class Weather{
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;



  Weather(
      {
        this.cityName,
        this.temp,
        this.wind,
        this.humidity,
        this.feels_like,
        this.pressure,

      }
      );
  Weather.fromJson(Map<String,dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];

  }

}