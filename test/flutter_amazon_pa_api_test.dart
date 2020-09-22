import 'dart:io' show Platform;

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_amazon_pa_api/flutter_amazon_pa_api.dart';
import 'package:flutter_amazon_pa_api/get_items_response.dart';
import 'package:flutter_amazon_pa_api/images.dart';
import 'package:flutter_amazon_pa_api/item.dart';
import 'package:flutter_amazon_pa_api/item_info.dart';

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

    final response = await paapi.getItems(['4479302735']);
    final item = response.itemsResult.items[0];
    expect(item.asin, '4479302735');
    expect(item.detailPageURL,
        'https://www.amazon.co.jp/dp/4479302735?tag=meganii-22&linkCode=ogi&th=1&psc=1');
    expect(item.images.primary.medium.height, 160);
    expect(item.itemInfo.title.displayValue, '「1日30分」を続けなさい! (だいわ文庫)');
    expect(item.itemInfo.byLineInfo.contributors[0].name, '古市 幸雄');
  });

  test('get items for 4478111030', () async {
    final env = Platform.environment;
    final awsAccessKey = env['AWS_ACCESS_KEY_ID'];
    final awsSecretKey = env['AWS_SECRET_ACCESS_KEY'];
    final awsAssociateTag = env['AWS_ASSOCIATE_TAG'];
    final paapi = PaAPI(awsAccessKey, awsSecretKey)
      ..partnerTag = awsAssociateTag;

    final response = await paapi.getItems(['4478111030']);
    final item = response.itemsResult.items[0];
    expect(item.asin, '4478111030');
    expect(item.detailPageURL,
        'https://www.amazon.co.jp/dp/4478111030?tag=meganii-22&linkCode=ogi&th=1&psc=1');
  });

  test('Item', () {
    var responseJson = {
      "ASIN": "B0199980K4",
      "DetailPageURL":
          "https://www.amazon.com/dp/B0199980K4?tag=xyz-20&linkCode=ogi&language=en_US&th=1&psc=1",
    };

    Item item = Item.fromJson(responseJson);
    expect(item.asin, "B0199980K4");
    expect(item.detailPageURL,
        "https://www.amazon.com/dp/B0199980K4?tag=xyz-20&linkCode=ogi&language=en_US&th=1&psc=1");
  });

  test('itemsResult', () {
    var reponseJson = {
      "ItemsResult": {
        "Items": [
          {
            "ASIN": "4479302735",
            "DetailPageURL": "test",
            "Images": {
              "Primary": {
                "Small": {"URL": "", "Height": 10, "Width": 20}
              }
            }
          },
          {"ASIN": "4479302736", "DetailPageURL": "test"},
        ]
      }
    };
    var response = GetItemsResponse.fromJson(reponseJson);
    var items = response.itemsResult.items;
    expect(items[0].asin, "4479302735");
    expect(items[1].asin, "4479302736");
  });

  test('Title', () {
    var responseJson = {
      "Title": {
        "DisplayValue": "Star Trek II: The Wrath of Khan",
        "Label": "Title",
        "Locale": "en_US"
      },
    };

    ItemInfo itemInfo = ItemInfo.fromJson(responseJson);
    expect(itemInfo.title.displayValue, "Star Trek II: The Wrath of Khan");
    expect(itemInfo.title.label, "Title");
    expect(itemInfo.title.locale, "en_US");
  });

  test('Images', () {
    var responseJson = {
      "Primary": {
        "Small": {
          "Height": 75,
          "URL": "https://m.media-amazon.com/images/I/41OiLOcQVJL._SL75_.jpg",
          "Width": 46
        }
      }
    };

    var images = Images.fromJson(responseJson);
    // Image(size, height, width, url)
    var primarySmallImage = images.primary.small;
    expect(primarySmallImage.height, 75);
    expect(primarySmallImage.width, 46);
    expect(primarySmallImage.url,
        'https://m.media-amazon.com/images/I/41OiLOcQVJL._SL75_.jpg');
  });
}
