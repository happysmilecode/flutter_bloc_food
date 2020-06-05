import 'package:chifood/bloc/base/baseFilterRestaurant.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';

class FilterRestaurant extends BaseFilterRestaurant{
  Dio client;

  FilterRestaurant(this.client);

  @override
  Future<List<Restaurants>> getFilteredRestaurant({String entity_id, String entity_type, String lat, String lon, String cuisines, String radius, String category})async {
    Response res=await client.get<dynamic>('https://developers.zomato.com/api/v2.1/search',queryParameters: {'entity_id':entity_id});
    List<Restaurants> result=res.data['restaurants'].map((each){
        return standardSerializers.deserializeWith(Restaurants.serializer, each['restaurant']);
    }).toList();
    return result;
  }

}