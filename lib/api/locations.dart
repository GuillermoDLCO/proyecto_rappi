import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Location {
  final double lat;
  final double lng;

  Location({
    this.lat,
    this.lng,
  });
}

class Store {
  final int id;
  final String name;
  final int categoryId;
  final Location location;

  Store({
    this.id,
    this.name,
    this.categoryId,
    this.location,
  });

}

class Stores {
  final List<Store> stores;

  Stores({
    this.stores,
  });

  factory Stores.fromJson(List<dynamic> json) {
    List<Store> stores = new List<Store>();
    for(var i = 0; i < json.length; i++) {
      stores.add(Store(
        id: json[i]['id'],
        name: json[i]['name'],
        categoryId: json[i]['categoryId'],
        location: Location(lat: json[i]['location']['lat'], lng: json[i]['location']['lng']),
      ));
    }
    return Stores(stores: stores);
  }
}

Future<Stores> getRappiLocations() async {
  const rappiStoresURL = 'https://my-json-server.typicode.com/luhego/rappi-clone-dummy-data/stores';

  final response = await http.get(rappiStoresURL);
  if (response.statusCode == 200) {
    return Stores.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected us code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(rappiStoresURL));
  }
}