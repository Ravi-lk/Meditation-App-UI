import 'package:flutter/material.dart';
import 'package:meditation/models/icon_model.dart';

final List<IconModel> iconImages = IconModel.icons;

Widget buildIconList() => Padding(
      padding: EdgeInsets.only(bottom: 8, top: 22),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
          iconImages.length,
          (index) => Container(
            width: 100,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        
                        child: Container(
                          width: 70,
                          height: 70,
                          color: Colors.amber,
                          child: Image.asset(
                            
                            iconImages[index].iconImage,
                            height: 19,
                            width: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  iconImages[index].title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )),
      ),
    );
