// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.anime.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeAnime _$$_HomeAnimeFromJson(Map<String, dynamic> json) => _$_HomeAnime(
      trending: json['trending'] == null
          ? null
          : AnimeModel.fromJson(json['trending'] as Map<String, dynamic>),
      popular: json['popular'] == null
          ? null
          : AnimeModel.fromJson(json['popular'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomeAnimeToJson(_$_HomeAnime instance) =>
    <String, dynamic>{
      'trending': instance.trending,
      'popular': instance.popular,
    };
