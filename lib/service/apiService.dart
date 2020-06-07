

import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/serializer.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

Future<LocationLocation> getGeoInfoFromZomato(Dio client,String query,double lat,double long) async{
  Response res= await client.get<Response>('$url/locations',queryParameters: <String,dynamic>{'query':query,'lat':lat,'lon':long});

  return standardSerializers.deserializeWith(LocationLocation.serializer,res.data['location_suggestions'][0]);
}


Future<List<Restaurants>> searchRestaurants(Dio client,String query,String entity_id,String entity_type) async {
  Response res=await client.get('//developers.zomato.com/api/v2.1/search?entity_id=$entity_id&entity_type=$entity_type&q=$query');
  return res.data['restaurants'].map((each){
    return standardSerializers.deserializeWith(Restaurants.serializer, each['restaurant']);
  }).toList();
}


