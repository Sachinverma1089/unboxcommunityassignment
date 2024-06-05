import 'dart:html';

import 'package:assignmentondc/views/shared/appstyle.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String status;
  final String brand;
  final String model;
  final String storage;
  final Color color;
  const CustomListTile(
      {required this.status,
      required this.brand,
      required this.model,
      required this.storage,
      required this.color,
      super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: const Color(0xff242323)),
            borderRadius: BorderRadius.circular(10),
            color: widget.color),
        child: Stack(children: [
          Positioned(
            child: Container(
              color: Colors.black38,
              height: 40,
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 10, right: 5, left: 5, bottom: 10)),
                  Expanded(
                      child: Text(
                    widget.status,
                    style: appstyle(15, Colors.white, FontWeight.normal),
                  )),
                  Text("Mar 16,2023 3:45pm",
                      style: appstyle(15, Colors.white, FontWeight.normal)),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 42,
            left: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 90,
                  width: 90,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 90,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.brand,
                        style: appstyle(14, Colors.white.withOpacity(0.6),
                            FontWeight.normal),
                      ),
                      Text(
                        widget.model,
                        style: appstyle(14, Colors.white, FontWeight.bold),
                      ),
                      Text(
                        widget.storage,
                        style: appstyle(14, Colors.white.withOpacity(0.3),
                            FontWeight.normal),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
