import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/kuis/data/kuis_data.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/kuis/hasil_kuis.dart';
import 'package:eklbm_bima_ciputra_satrio/shared/color.dart';
// import 'package:quizz_app/widgets/quizz_widget.dart';
// import 'package:quizz_app/model/question_model.dart';

class KuisPage extends StatefulWidget {
  const KuisPage({Key? key}) : super(key: key);

  @override
  _KuisPageState createState() => _KuisPageState();
}

class _KuisPageState extends State<KuisPage> {
  int question_pos = 0;
  int score = 0;
  int falseQuestion = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.pripmaryColor,
        body: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            if (page == questions.length - 1) {
              setState(() {
                btnText = "See Results";
              });
            }
            setState(() {
              answered = false;
            });
          },
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
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
                            "Question ${index + 1}/25",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: [
                            if (questions[index].image != null) 
                            
                            SizedBox(
                              width: double.infinity,
                              height: 230.0,
                              child: Column(
                                children: [
                                  Text(
                                    "${questions[index].question}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.aspectRatio * 28,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    width: double.infinity,
                                    height: 180.0,
                                    child: questions[index].image,
                                  ) 
                                  
                                ],
                              ),
                            )
                            
                            else 
                    
                            SizedBox(
                              width: double.infinity,
                              height: 120.0,
                              child: Column(
                                children: [
                                  Text(
                                    "${questions[index].question}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.aspectRatio * 28,
                                    ),
                                  ),
                                  
                                  // const SizedBox(
                                  //   child: Text(
                                  //     "null"
                                  //   ),
                                  // ),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 240.0,
                        //   child: Column(
                        //     children: [
                        //       Text(
                        //         "${questions[index].question}",
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 22.0,
                        //         ),
                        //       ),
                              
                        //       if (questions[index].image == null) 
                              
                        //       const SizedBox(
                        //         child: Text(
                        //           "null"
                        //         ),
                        //       )
                              
                        //       else 
                    
                        //       SizedBox(
                        //         width: double.infinity,
                        //         height: 180.0,
                        //         child: questions[index].image,
                        //       ) 
                              
                        //     ],
                        //   ),
                        // ),
                        Divider(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        for (int i = 0; i < questions[index].answers!.length; i++)
                          Container(
                            // decoration: BoxDecoration(
                            //   color: Colors.black
                            // ),
                            width: double.infinity,
                            height: 45.0,
                            margin: EdgeInsets.only(
                                bottom: 10.0, left: 12.0, right: 12.0),
                            child: RawMaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fillColor: btnPressed
                                  ? questions[index].answers!.values.toList()[i]
                                      ? Colors.green
                                      : Colors.red
                                  : AppColor.secondaryColor,
                              onPressed: !answered
                                  ? () {
                                      if (questions[index]
                                          .answers!
                                          .values
                                          .toList()[i]) {
                                        score++;
                                        print("yes");
                                      } else {
                                        falseQuestion++;
                                        print("nooo");
                                      }
                                      setState(() {
                                        btnPressed = true;
                                        answered = true;
                                      });
                                    }
                                  : null,
                              child: Text(questions[index].answers!.keys.toList()[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 18.0,
                                    fontSize: size.aspectRatio * 25,
                                  )),
                            ),
                          ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // RawMaterialButton(
                        //   onPressed: () {
                        //     if (_controller!.page?.toInt() == questions.length - 1) {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => ResultScreen(score, falseQuestion)));
                        //     } else {
                        //       _controller!.nextPage(
                        //           duration: Duration(milliseconds: 250),
                        //           curve: Curves.easeInExpo);
                    
                        //       setState(() {
                        //         btnPressed = false;
                        //       });
                        //     }
                        //   },
                        //   shape: StadiumBorder(),
                        //   fillColor: Colors.blue,
                        //   padding: EdgeInsets.all(15.0),
                        //   elevation: 0.0,
                        //   child: Text(
                        //     btnText,
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: questions.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_controller!.page?.toInt() == questions.length - 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(score, falseQuestion)));
            } else {
              _controller!.nextPage(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeInExpo);
    
              setState(() {
                btnPressed = false;
              });
            }
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.next_plan_rounded),
        ),
      ),
    );

    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: AppColor.pripmaryColor,
    //     body: Padding(
    //       // padding: const EdgeInsets.all(18.0),
    //       padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18.0),
    //       child: PageView.builder(
    //         controller: _controller!,
    //         onPageChanged: (page) {
    //           if (page == questions.length - 1) {
    //             setState(() {
    //               btnText = "See Results";
    //             });
    //           }
    //           setState(() {
    //             answered = false;
    //           });
    //         },
    //         // physics: new NeverScrollableScrollPhysics(),
    //         itemBuilder: (context, index) {
    //           return Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 width: double.infinity,
    //                 child: Text(
    //                   "Question ${index + 1}/10",
    //                   textAlign: TextAlign.start,
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 28.0,
    //                   ),
    //                 ),
    //               ),
    //               Divider(
    //                 color: Colors.white,
    //               ),
    //               SizedBox(
    //                 height: 10.0,
    //               ),
    //               SizedBox(
    //                 width: double.infinity,
    //                 height: 250.0,
    //                 child: Column(
    //                   children: [
    //                     Text(
    //                       "${questions[index].question}",
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 22.0,
    //                       ),
    //                     ),
                        
    //                     if (questions[index].image == null) 
                        
    //                     const SizedBox(
    //                       child: Text(
    //                         "null"
    //                       ),
    //                     )
                        
    //                     else 
  
    //                     SizedBox(
    //                       width: double.infinity,
    //                       height: 120.0,
    //                       child: questions[index].image,
    //                     ) 
                        
    //                   ],
    //                 ),
    //               ),
    //               for (int i = 0; i < questions[index].answers!.length; i++)
    //                 Container(
    //                   width: double.infinity,
    //                   height: 40.0,
    //                   margin: EdgeInsets.only(
    //                       bottom: 15.0, left: 12.0, right: 12.0),
    //                   child: RawMaterialButton(
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(8.0),
    //                     ),
    //                     fillColor: btnPressed
    //                         ? questions[index].answers!.values.toList()[i]
    //                             ? Colors.green
    //                             : Colors.red
    //                         : AppColor.secondaryColor,
    //                     onPressed: !answered
    //                         ? () {
    //                             if (questions[index]
    //                                 .answers!
    //                                 .values
    //                                 .toList()[i]) {
    //                               score++;
    //                               print("yes");
    //                             } else {
    //                               print("no");
    //                             }
    //                             setState(() {
    //                               btnPressed = true;
    //                               answered = true;
    //                             });
    //                           }
    //                         : null,
    //                     child: Text(questions[index].answers!.keys.toList()[i],
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 18.0,
    //                         )),
    //                   ),
    //                 ),
    //               SizedBox(
    //                 height: 10.0,
    //               ),
    //               RawMaterialButton(
    //                 onPressed: () {
    //                   if (_controller!.page?.toInt() == questions.length - 1) {
    //                     Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                             builder: (context) => ResultScreen(score)));
    //                   } else {
    //                     _controller!.nextPage(
    //                         duration: Duration(milliseconds: 250),
    //                         curve: Curves.easeInExpo);
  
    //                     setState(() {
    //                       btnPressed = false;
    //                     });
    //                   }
    //                 },
    //                 shape: StadiumBorder(),
    //                 fillColor: Colors.blue,
    //                 padding: EdgeInsets.all(18.0),
    //                 elevation: 0.0,
    //                 child: Text(
    //                   btnText,
    //                   style: TextStyle(color: Colors.white),
    //                 ),
    //               )
    //             ],
    //           );
    //         },
    //         itemCount: questions.length,
    //       )
    //     ),
    //   ),
    // );
  }
}
