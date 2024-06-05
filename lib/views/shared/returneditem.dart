import 'package:assignmentondc/views/shared/custom_listTile.dart';
import 'package:flutter/material.dart';

class ReturnedItems extends StatefulWidget {
  final String status;
  final String brand;
  final String model;
  final String storage;
  const ReturnedItems(
      {required this.status,
      required this.brand,
      required this.model,
      required this.storage,
      super.key});
  _ReturnedItemsState createState() => _ReturnedItemsState();
}

class _ReturnedItemsState extends State<ReturnedItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    CustomListTile(
                        color: Color(0xFF121212),
                        status: widget.status,
                        brand: widget.brand,
                        model: widget.model,
                        storage: widget.storage)
                  ],
                );
              })
        ],
      ),
    );
  }
}
