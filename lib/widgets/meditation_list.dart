import 'package:flutter/material.dart';
import 'package:meditation/models/meditation_model.dart';


final List<MeditationModel> meditations = MeditationModel.meditations;

class MeditationList extends StatelessWidget {
  const MeditationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // color: Colors.black.withOpacity(0.1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Daily Meditations',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                meditations.length,
                (index) => Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    meditations[index].image,
                                    height: 250,
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Text(
                                        'Rest & Relax',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0.2,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child:  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.schedule),
                                        color: Colors.grey,
                                      ),
                                      Text('30 mins',
                                      style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                    ),
                                  ),
                                 
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ],
        ));
  }
}
