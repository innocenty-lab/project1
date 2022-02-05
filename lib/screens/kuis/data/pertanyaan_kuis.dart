import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/kuis/model/kuis_model.dart';

List<QuestionModel> questions = [

  QuestionModel(
    "How Many Whiskers does the average cat have on each side of its face ?",
    Image.asset('assets/images/cat1.jpg'),
    {
      "1": false,
      "3": false,
      "12": true,
      "5,007": false,
    },
  ),

  QuestionModel(
    "INI SOAL KE 2", 
    null,
    {
      "When it cares for its kittens": false,
      "When it needs confort": false,
      "When it feels content": false,
      "All of the above": true,
    }
  ),

  QuestionModel(
    "What is the averge nulber of kittens in a litter ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "1 to 2": false,
      "3 to 5": true,
      "8 to 10": false,
      "12 to 14": false,
    }
  ),

  QuestionModel(
    "How many moons does Mars have ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "1": false,
      "2": false,
      "4": true,
      "8": false,
    }
  ),

  QuestionModel(
    "What is Mars's nickname ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "The red planet": true,
      "The dusty planet": false,
      "The hot planet": false,
      "The smelly planet": false,
    }
  ),

  QuestionModel(
    "About How long would it take to travel to Mars ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "Three days": false,
      "A month": false,
      "Eight months": true,
      "Two years": false,
    }
  ),

  QuestionModel(
    "Mars is Named after the Roman god Mars. What is he the god of ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "Fire": false,
      "Love": false,
      "Agriculture": false,
      "War": true,
    }
  ),

  QuestionModel(
    "Mars Is the ___ planet from the sun ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
      "Secon": false,
      "Third": false,
      "Fourth": true,
      "Sixth": false,
    }
  ),

  QuestionModel(
    "Where did Orville and Wilbur Wright build their first flying airplane ?",
    Image.asset('assets/images/cat1.jpg'),
    {
      "Paris, France": false,
      "Boston, Massachusetts": false,
      "Kitty Hawk, North Carolina": true,
      "Tokyou, Japan": false,
    }
  ),

  QuestionModel(
    "The First astronuts to travel to space came from which country ?", 
    Image.asset('assets/images/cat1.jpg'),
    {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
    }
  ),
];
