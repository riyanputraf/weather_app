class URLs{

  //https://api.openweathermap.org/data/2.5/weather?q={city name},{country code}&appid={API key}
  //api.openweathermap.org/data/2.5/forecast?q={city name},{country code}&appid={API key}
  //https://openweathermap.org/img/wn/10d@2x.png
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';

  static weatherIcon(String code){
    return 'https://openweathermap.org/img/wn/$code@4x.png';
  }
}