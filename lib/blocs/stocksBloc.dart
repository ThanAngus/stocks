import 'dart:async';

import 'package:stocks/models/stockModel/stocksModel.dart';
import 'package:stocks/repository/stocksRepository.dart';

import '../helper/response.dart';

class StocksBloc{
  StocksRepository _stocksRepository;
  StreamController _streamController;
  StreamSink<Response<StocksModel>> get stocksDataSink => _streamController.sink;
  Stream<Response<StocksModel>> get stocksDataStream => _streamController.stream;

  StocksBloc(String companies){
    _streamController = StreamController<Response<StocksModel>>();
    _stocksRepository = StocksRepository();
    fetchStocksDetails(companies);
  }

  fetchStocksDetails(String category) async{
    stocksDataSink.add(Response.loading("Getting company market details"));
    try{
      StocksModel stocks = await _stocksRepository.fetchStocksData(category);
      stocksDataSink.add(Response.completed(stocks));
    } catch(e){
      stocksDataSink.add(Response.error(e.toString()));
    }
  }

  dispose(){
    _streamController.close();
  }
}