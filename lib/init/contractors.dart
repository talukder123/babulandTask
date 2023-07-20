class InitVariable {
  final String domainName = "https://jack.timerni.com";
  final String baseApi = "http://apps.babuland.org/bblapi/babuland/v1/";
  final String tikitApi = "mock_ticket_ms";
  final String tikitApiDeatails = "mock_ticket_dt";

  Uri apiUri(String url) {
    return Uri.parse(baseApi + url);
  }
}


// ------------------------------- Dilog Theam




