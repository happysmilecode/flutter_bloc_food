

import 'package:built_collection/built_collection.dart';
import 'package:built_collection/built_collection.dart';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/photo.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/userRating.dart';

part 'restaurants.g.dart';
abstract class Restaurants implements Built<Restaurants,RestaurantsBuilder>{
  static Serializer<Restaurants> get serializer => _$restaurantsSerializer;
  String get id;
  String get name;
  String get url;
  Location get location;
  int get average_cost_for_two;
  String get cuisines;
  int get price_range;
  String get currency;
  String get thumb;
  String get featured_image;
  String get photos_url;
  String get menu_url;
  String get events_url;
  UserRating get user_rating;
  int get has_online_delivery;
  int get is_delivering_now;
  int get has_table_booking;
  String get deeplink;
  @nullable
  String get timing;
  @nullable
  int get all_reviews_count;
  @nullable
  int get photo_count;
  @nullable
  String get phone_numbers;
  @nullable
  BuiltList<Photo> get photos;

  Restaurants._();
  factory Restaurants([void Function(RestaurantsBuilder) updates]) =_$Restaurants;

}