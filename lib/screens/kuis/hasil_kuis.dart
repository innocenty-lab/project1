
import 'package:eklbm_bima_ciputra_satrio/screens/halamanUtama/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  int falseQuestion;
  ResultScreen(this.score, this.falseQuestion);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.pripmaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.01, horizontal: size.width * 0.05),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Selamat! Kamu berhasil menyelesaikan kuis ini.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Text(
                    "Skor Kamu",
                    style: TextStyle(color: Colors.white, fontSize: 34.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "${widget.score * 10}/250",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 85.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Ringkasan :",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "${widget.score} Jawaban Benar",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "${widget.falseQuestion} Jawaban Salah",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "${25 - (widget.falseQuestion + widget.score)} Jawaban Kosong",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => MyHomePage(),
                      //     ));
                      Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => MyHomePage(),
                              ),
                              (route) => false,//if you want to disable back feature set to false
                      );
                    },
                    shape: StadiumBorder(),
                    color: AppColor.secondaryColor,
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "Kembali",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
