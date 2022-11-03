const String marketStackApi = '$apiKey';
const String apiUrl = "http://api.marketstack.com/v1/tickers?access_key=$marketStackApi&limit=10&count=1?q={'has_eod':'true'}";
const String apiUrlEod = "http://api.marketstack.com/v1/eod?access_key=$marketStackApi&symbols=";
