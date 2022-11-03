import 'package:stocks/constants.dart';
import 'package:stocks/helper/ApiPovider.dart';
import 'package:stocks/models/tickerModel/tickers.dart';

class StocksTickerRepository{
  final ApiProvider _provider = ApiProvider();

  Future<CompanyCodeList> fetchTickerData() async{
    final response = await _provider.get(apiUrl);
    return CompanyCodeList.fromJson(response);
  }
}