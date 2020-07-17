import 'package:flutter/foundation.dart';

class Patient {
  final String imageUrl, description;
  final int amount , id;
  final int collected;

  //TODO: make description required
  const Patient({
    this.description,
    @required this.collected,
    @required this.id,
    @required this.amount,
    @required this.imageUrl,
  });
}
