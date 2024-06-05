import 'package:assignmentondc/views/shared/custom_listTile.dart';
import 'package:flutter/material.dart';

class CancelledItems extends StatefulWidget {
  final String status;
  final String brand;
  final String model;
  final String storage;
  const CancelledItems(
      {required this.status,
      required this.brand,
      required this.model,
      required this.storage,
      super.key});
  _CancelledItemsState createState() => _CancelledItemsState();
}

class _CancelledItemsState extends State<CancelledItems> {
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
                        color: Colors.grey.withOpacity(0.356),
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
