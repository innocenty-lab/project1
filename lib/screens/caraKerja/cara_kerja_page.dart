//import 'package:eklbm_bima_ciputra_satrio/screens/caraKerja/model/player_video.dart';
import 'package:eklbm_bima_ciputra_satrio/model/better_player.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class CaraKerjaPage extends StatelessWidget {
  const CaraKerjaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Cara Kerja Page'
      ),
      leading: MenuWidget(),
    ),
    body: Column(
      children: [
          Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.brown[200],
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                    width: 70,
                                    height: 70,
                                    child: Icon(
                                      Icons.auto_stories_outlined,
                                      size: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Video 1',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Kelistrikan',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ),
        ]
    ),
  );
}