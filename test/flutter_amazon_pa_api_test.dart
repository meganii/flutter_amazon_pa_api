import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_amazon_pa_api/flutter_amazon_pa_api.dart';
import 'dart:io' show Platform;
import 'dart:convert';

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

  test('get items', () async {
    final env = Platform.environment;
    final awsAccessKey = env['AWS_ACCESS_KEY_ID'];
    final awsSecretKey = env['AWS_SECRET_ACCESS_KEY'];
    final awsAssociateTag = env['AWS_ASSOCIATE_TAG'];
    final paapi = PaAPI(awsAccessKey, awsSecretKey)
      ..partnerTag = awsAssociateTag;

    final responseBody = await paapi.getItems(['4479302735']);
    var res = jsonDecode(responseBody);
    expect(res['ItemsResult']['Items'][0]['ASIN'], '4479302735');
  });
}
