class CompanyCodeList {
  List<CompanyDetails> companies;

  CompanyCodeList({
    this.companies,
  });

  factory CompanyCodeList.fromJson(Map<String, dynamic> json) {
    return CompanyCodeList(
      companies: json['data'] != null ? (json['data'] as List).map((i) => CompanyDetails.fromJson(i)).toList() : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> companies = <String, dynamic>{};
    if (companies != null) {
      companies['data'] = this.companies.map((v) => v.toJson).toList();
    }
    return companies;
  }
}

List<CompanyCodeList> companyList = [];

class CompanyDetails {
  final String companyCode;
  final String companyName;

  CompanyDetails({
    this.companyCode,
    this.companyName,
  });

  factory CompanyDetails.fromJson(Map<String, dynamic> json){
    return CompanyDetails(
      companyCode: json['symbol'],
      companyName: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = companyName;
    data['symbol'] = companyCode;
    return data;
  }
}

class StocksInfo {
  final String companyName;
  final String companyCode;
  final String companyLogo;

  StocksInfo({
    this.companyName,
    this.companyCode,
    this.companyLogo,
  });
}

List<StocksInfo> stocks = [
  StocksInfo(
    companyName: "Apple",
    companyCode: "AAPL",
    companyLogo: "assets/logo/AAPL.png",
  ),
  StocksInfo(
    companyName: "Amazon",
    companyCode: "AMZN",
    companyLogo: "assets/logo/AMZN.png",
  ),
  StocksInfo(
    companyName: "Google",
    companyCode: "GOOG",
    companyLogo: "assets/logo/GOOG.png",
  ),
  StocksInfo(
    companyName: "H&M",
    companyCode: "HNNMY",
    companyLogo: "assets/logo/HM-B.ST.png",
  ),
  StocksInfo(
    companyName: "Coca-cola",
    companyCode: "KO",
    companyLogo: "assets/logo/KO.png",
  ),
  StocksInfo(
    companyName: "Netflix",
    companyCode: "NFLX",
    companyLogo: "assets/logo/NFLX.png",
  ),
  StocksInfo(
    companyName: "Nvidia",
    companyCode: "NVDA",
    companyLogo: "assets/logo/NVDA.png",
  ),
  StocksInfo(
    companyName: "Pepsico",
    companyCode: "PEP",
    companyLogo: "assets/logo/PEP.png",
  ),
  StocksInfo(
    companyName: "Ferrari",
    companyCode: "RACE",
    companyLogo: "assets/logo/RACE.png",
  ),
  StocksInfo(
    companyName: "Tesla",
    companyCode: "TSLA",
    companyLogo: "assets/logo/TSLA_BIG.png",
  ),
];
