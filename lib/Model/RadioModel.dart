// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/animation.dart';

//  class RadioList {
//   final List<RadioModel>? radios;
//   RadioList({
//     this.radios,
//   });

//   RadioList copyWith({
//     List<RadioModel>? radios,
//   }) {
//     return RadioList(
//       radios: radios ?? this.radios,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'radios': radios!.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory RadioList.fromMap(Map<String, dynamic> map) {
//     return RadioList(
//       radios: List<RadioModel>.from(
//         (map['radios'] as List<dynamic>).map<RadioModel>(
//           (x) => RadioModel.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory RadioList.fromJson(String source) =>
//       RadioList.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'RadioList(radios: $radios)';

//   @override
//   bool operator ==(covariant RadioList other) {
//     if (identical(this, other)) return true;
//     final listEquals = const DeepCollectionEquality().equals;

//     return listEquals(other.radios, radios);
//   }

//   @override
//   int get hashCode => radios.hashCode;
// }

class RadioModel {
  //Myradio
  int id;
  String name;
  String TagLine;
  String color;
  String desc;
  String url;
  String icon;
  String img;
  String lang;
  String category;
  bool disliked;
  int order;
  RadioModel({
    required this.id,
    required this.name,
    required this.TagLine,
    required this.color,
    required this.desc,
    required this.url,
    required this.icon,
    required this.img,
    required this.lang,
    required this.category,
    required this.disliked,
    required this.order,
  });

  RadioModel copyWith({
    int? id,
    String? name,
    String? TagLine,
    String? color,
    String? desc,
    String? url,
    String? icon,
    String? img,
    String? lang,
    String? category,
    bool? disliked,
    int? order,
  }) {
    return RadioModel(
      id: id ?? this.id,
      name: name ?? this.name,
      TagLine: TagLine ?? this.TagLine,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      icon: icon ?? this.icon,
      img: img ?? this.img,
      lang: lang ?? this.lang,
      category: category ?? this.category,
      disliked: disliked ?? this.disliked,
      order: order ?? this.order,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'TagLine': TagLine,
      'color': color,
      'desc': desc,
      'url': url,
      'icon': icon,
      'img': img,
      'lang': lang,
      'category': category,
      'disliked': disliked,
      'order': order,
    };
  }

  factory RadioModel.fromMap(Map<String, dynamic> map) {
    return RadioModel(
      id: map['id'] as int,
      name: map['name'] as String,
      TagLine: map['TagLine'] as String,
      color: map['color'] as String,
      desc: map['desc'] as String,
      url: map['url'] as String,
      icon: map['icon'] as String,
      img: map['img'] as String,
      lang: map['lang'] as String,
      category: map['category'] as String,
      disliked: map['disliked'] as bool,
      order: map['order'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RadioModel.fromJson(String source) =>
      RadioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RadioModel(id: $id, name: $name, TagLine: $TagLine, color: $color, desc: $desc, url: $url, icon: $icon, img: $img, lang: $lang, category: $category, disliked: $disliked, order: $order)';
  }

  @override
  bool operator ==(covariant RadioModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.TagLine == TagLine &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.icon == icon &&
        other.img == img &&
        other.lang == lang &&
        other.category == category &&
        other.disliked == disliked &&
        other.order == order;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        TagLine.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        icon.hashCode ^
        img.hashCode ^
        lang.hashCode ^
        category.hashCode ^
        disliked.hashCode ^
        order.hashCode;
  }
}
