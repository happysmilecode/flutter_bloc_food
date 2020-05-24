

import 'package:chifood/bloc/base/baseCategory.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';

import '../../config.dart';

class SelectionImplement extends BaseSelection{
  Dio client;

  SelectionImplement(this.client);

  @override
  Future<List<Category>> getCategories() async {
   Response res= await client.get('$url$CATEGORY');
    return res.data;
  }
  @override
  Future<GeoLocation> getGeoLocation({double lat,double lon}) async {
    Response res=await client.get('$url$GEOLOCATION');
    return serializer.deserialize(res.data);
  }

  @override
  Future<List<Cuisine>> getCuisines({int city_id, double lat, double lon})async {
    Response res;
    if(lat!=null&&lon!=null){
      res= await client.get('$url$CUSINES',queryParameters: {"city_id":city_id,'lat':lat,'lon':lon});
    }else{
     res= await client.get('$url$CUSINES',queryParameters: {"city_id":city_id,});
    }
    return res.data;
  }

  @override
  Future<List<Establishment>> getEstablishments({int city_id, double lat, double lon}) async {
    Response res= await client.get('$url$ESTABLISHMENT',queryParameters: {"city_id":city_id,'lat':lat,'lon':lon});
    return res.data;
  }

}