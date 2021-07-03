import 'package:flutter/material.dart';
import 'package:meditation/models/music_model.dart';


final List<MusicModel> musics = MusicModel.musics;

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Music',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              musics.length,
              (index) => Padding(
                padding: EdgeInsets.only(top: 8, left: 14),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        shadowColor: Colors.grey,
                        child: Column(
                          children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                             child:Image.asset(
                                musics[index].image,
                                height: 176,
                                width: 145,
                                fit: BoxFit.cover,
                              ), 
                           ),
                              
                           
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 15.0, top: 5),
                              child: Text(musics[index].name,
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                
                                
                              ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
