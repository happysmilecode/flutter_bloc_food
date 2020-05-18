import 'package:built_value/built_value.dart';

part 'reviewUser.g.dart';

abstract class ReviewUser implements Built<ReviewUser,ReviewUserBuilder> {
  String get name;
  String get zomato_handle;
  String get foodie_level;
  num get foodie_level_num;
  String get foodie_color;
  String get profile_url;
  String get profile_deeplink;
  String get profile_image;
  factory ReviewUser([void Function(ReviewUserBuilder) updates]) =
  _$ReviewUser;
  ReviewUser._();
}