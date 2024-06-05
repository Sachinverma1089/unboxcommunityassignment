import 'package:assignmentondc/views/shared/custom_listTile.dart';

import 'package:flutter/material.dart';

class AllItems extends StatefulWidget {
  const AllItems({super.key});
  _AllItemsState createState() => _AllItemsState();
}

class _AllItemsState extends State<AllItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ListView(
            children: [
              CustomListTile(
                  color: Color(0xFF121212),
                  status: "Pending",
                  brand: "Apple",
                  model: "iPhone 14",
                  storage: "128 GB Storage"),
              CustomListTile(
                  color: Color(0xFF121212),
                  status: "Delivered",
                  brand: "OnePlus",
                  model: "OnePlus 11",
                  storage: "256 GB Storage"),
              CustomListTile(
                  color: Color(0xFF121212),
                  status: "Returned",
                  brand: "Apple",
                  model: "Watch S8",
                  storage: "Belgo"),
              CustomListTile(
                  color: Colors.grey.withOpacity(0.35),
                  status: "Cancelled",
                  brand: "Apple",
                  model: "iPhone 14",
                  storage: "128 GB Storage")
            ],
          )
        ],
      ),
    );
  }
}
