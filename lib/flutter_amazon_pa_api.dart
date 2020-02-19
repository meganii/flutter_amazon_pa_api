library flutter_amazon_pa_api;

class PaAPI {
  /// Amazon Access Key
  String accessKey;

  /// Amazon Secret Key
  String secretKey;

  /// Service name
  String service = 'ProductAdvertisingAPI';

  /// Host default=JP
  String host = 'webservices.amazon.co.jp'; 

  /// Region default=JP
  String region = 'us-west-2';

  /// API Request PATH
  String path;

  /// Amazon associate tag
  String partnerTag;

  PaAPI(this.accessKey, this.secretKey);

}
