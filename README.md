
# Stock market flutter app




## Description
A simple flutter app for displaying stock market details for any random companies by using MarketStack API.


## Marketstack API
A complete, easy-to-use JSON API for your market data needs
Our stock market API is powered by cutting-edge technology and highly scalable cloud infrastructure, capable of handling anything from a few hundred requests per month all the way to millions of hits per day. No matter which volume - we've got you covered!

Lightweight JSON API

Our stock market data API has been built with simplicity in mind: Requests are made using a simple HTTP GET structure and API response data is delivered in lightweight JSON format.

Bank-Level Security

Each bit and byte sent to and from the marketstack API is encrypted using industry-standard 256-bit HTTPS encryption.

Extensive Documentation

A straightforward API documentation will help you get up and running within minutes using interactive demo requests and code examples in a variety of programming languages.
## Screenshots

![App Screenshot](https://github.com/ThanAngus/stocks/blob/main/screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-11-03%20at%2020.50.12.png)
![App Screenshot](https://github.com/ThanAngus/stocks/blob/main/screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-11-03%20at%2020.50.24.png)
![App Screenshot](https://github.com/ThanAngus/stocks/blob/main/screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-11-03%20at%2020.50.43.png)
![App Screenshot](https://github.com/ThanAngus/stocks/blob/main/screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-11-03%20at%2020.51.35.png)
## Getting started
    1. Get your API key for free from ![Market Stack](https://marketstack.com/signup)

    2. Clone the repo


```bash
  git clone https://github.com/ThanAngus/stocks.git
```
    3. Add your api key in the file lib/constant.dart 
## Running Tests

```bash
  flutter pub get
  flutter run
```


## API Reference

#### End-of-the-Day Data

```http
  https://api.marketstack.com/v1/eod
    ? access_key = YOUR_ACCESS_KEY
    & symbols = AAPL
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `access_key` | `string` | **Required**. Your API key |
| `symbols` | `string` | **Required**. Specify one or multiple comma-separated stock symbols (tickers) for your request, e.g. AAPL or AAPL,MSFT. Each symbol consumes one API request. Maximum: 100 symbols |

#### Tickers
Using the API's tickers endpoint you will be able to look up information about one or multiple stock ticker symbols as well as obtain end-of-day, real-time and intraday market data for single tickers. You will be able to find and try out an example API request below.
```http
  https://api.marketstack.com/v1/tickers
    ? access_key = YOUR_ACCESS_KEY
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `access_key`      | `string` | **Required**. Specify your API access key |



## Documentation
More documentation about MarketStack API
[Documentation](https://marketstack.com/documentation)


