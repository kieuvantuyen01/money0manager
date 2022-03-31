import 'package:flutter/material.dart';

import '../helpers/transform/transform.dart';


class CategoryIconBig extends StatelessWidget {
  String icon;
  String bgColor;


  CategoryIconBig({Key? key, required this.icon, required this.bgColor}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 48.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double width = constraints.maxWidth;

                    final double height = constraints.maxHeight;

                    return Stack(children: [
                      TransformHelper.translate(
                          x: 0,
                          y: 0,
                          z: 0,
                          child: Container(
                            width: width,
                            height: height,
                            child: Opacity(
                              opacity: 1.0,
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Container(
                                    color: Color(int.parse(this.bgColor)),
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ]);
                  }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double width = constraints.maxWidth * 1.1041666666666667;

                    final double height =
                        constraints.maxHeight * 1.1041666666666667;

                    return Stack(children: [
                      TransformHelper.translate(
                          x: 0,
                          y: 0,
                          z: 0,
                          child: Container(
                            width: width,
                            height: height,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                this.icon,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.1666666666666667,
                                  fontSize: 24.0,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          ))
                    ]);
                  }),
            )
          ]),
    );
  }
}
