import 'package:flutter/foundation.dart';

class Patient {
  final String id, imageUrl;
  final int percentage;
  final double goal;
  final double raised;
  final bool isUrgent;

  const Patient({
    @required this.isUrgent,
    @required this.raised,
    @required this.id,
    @required this.goal,
    @required this.percentage,
    @required this.imageUrl,
  });
}
