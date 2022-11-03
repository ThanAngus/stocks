import 'package:stocks/components/stocksTiles.dart';
import 'package:stocks/models/tickerModel/tickers.dart';
import 'package:flutter/material.dart';

class CompaniesList extends StatelessWidget {
  final CompanyCodeList companyCodeList;
  final int index;

  const CompaniesList({
    Key key,
    this.index,
    this.companyCodeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: index ?? companyCodeList.companies.length,
      itemBuilder: (context, index) {
        return StockTiles(
          companyName: companyCodeList.companies[index].companyName,
          companyCode: companyCodeList.companies[index].companyCode,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
