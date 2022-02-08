import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class List1 extends StatelessWidget {
  const List1({
    Key? key,
    required this.textJudul,
    required this.textDeskripsi,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String textJudul, textDeskripsi, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          decoration: new BoxDecoration(
            color: Theme.of(context).canvasColor,
            border: Border.all(
              color: Theme.of(context).canvasColor,
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: ClipRRect(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // gradient: LinearGradient(
                        //   colors: <Color>[
                        //     Color(0xFF0D47A1),
                        //     Color(0xFF1976D2),
                        //     Color(0xFF42A5F5),
                        //   ],
                        // ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.1, 0.5, 0.8, 0.9],
                          colors: [Colors.red, Colors.yellow, Colors.blue, Colors.purple]
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    // style: TextButton.styleFrom(
                    //   // primary: Colors.,
                    //   padding: EdgeInsets.all(20),
                    //   // textStyle: TextStyle(
                    //   //   fontWeight: FontWeight.w800, 
                    //   //   fontSize: 17, 
                    //   //   fontFamily: 'Poppins'
                    //   // ),
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    //   backgroundColor: Colors.white,
                    // ),
                    onPressed: press,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: SvgPicture.asset(
                            icon,
                            color: Colors.black,
                            width: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            // decoration: BoxDecoration(
                            //   color: Colors.blue,
                            // ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textJudul,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  textDeskripsi,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
