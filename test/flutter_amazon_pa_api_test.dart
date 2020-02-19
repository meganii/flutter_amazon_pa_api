import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_amazon_pa_api/flutter_amazon_pa_api.dart';

void main() {
  test('constractor', () {
    var awsAccessKey = 'key';
    var awsSecretKey = 'secret';
    final paapi = PaAPI(awsAccessKey, awsSecretKey);
    expect(paapi.accessKey, 'key');
    expect(paapi.secretKey, 'secret');
  });

  test('Set Region', () {
    final paapi = PaAPI('awsAccessKey', 'awsSecretKey')
      ..region = 'region'
      ..service = 'service'
      ..host = 'host'
      ..path = 'path'
      ..partnerTag = 'partnerTag';
    
    expect(paapi.region, 'region');
    expect(paapi.service, 'service');
    expect(paapi.host, 'host');
    expect(paapi.path, 'path');
    expect(paapi.partnerTag, 'partnerTag');
  });

}
