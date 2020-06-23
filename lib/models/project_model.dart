import 'package:flutter/foundation.dart';

///mersal projects data model
class Project {
  final String id, imageUrl;
  final num goal;
  final num raised;
  final String title;

  const Project({
    @required this.title,
    @required this.raised,
    @required this.id,
    @required this.goal,
    @required this.imageUrl,
  });
}