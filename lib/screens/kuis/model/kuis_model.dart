import 'package:flutter/cupertino.dart';

class QuestionModel {
  String? question;
  Image? image;
  Map<String, bool>? answers;
  QuestionModel(this.question, this.image, this.answers);
}
