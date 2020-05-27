
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cuisine.g.dart';
abstract class Cuisine implements Built<Cuisine,CuisineBuilder>{
  static Serializer<Cuisine> get serializer => _$cuisineSerializer;
  int get id;
  String get name;
  Cuisine._();
  factory Cuisine([void Function(CuisineBuilder) updates]) =_$Cuisine;
}