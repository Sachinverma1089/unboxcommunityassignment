import 'package:assignmentondc/controllers/pageroutewidget.dart';
import 'package:assignmentondc/views/shared/allitems.dart';
import 'package:assignmentondc/views/shared/appstyle.dart';

import 'package:assignmentondc/views/shared/cancelleditem.dart';
import 'package:assignmentondc/views/shared/delivereditems.dart';

import 'package:assignmentondc/views/shared/returneditem.dart';
import 'package:assignmentondc/views/ui/unbox.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text(
          "Order Histroy",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            // color: Colors.red,
            child: TabBar(
              padding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.transparent,
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.orange,
              labelStyle: appstyle(20, Colors.orange, FontWeight.normal),
              unselectedLabelColor: Colors.grey.withOpacity(0.7),
              tabs: const [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Deliverd",
                ),
                Tab(
                  text: "Cancelled",
                ),
                Tab(
                  text: "Returned",
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TabBarView(controller: _tabController, children: [
                GestureDetector(
                  child: AllItems(),
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      nextScreen(context, const UnBoxPage());
                    });
                  },
                ),
                DeliveredItems(
                    status: "Deliverd",
                    brand: "OnePlus",
                    model: "OnePlus 11",
                    storage: "256 GB Storage"),
                ReturnedItems(
                    status: "Cancelled",
                    brand: "Apple",
                    model: "Iphone 14",
                    storage: "128 GB"),
                CancelledItems(
                    status: "Returned",
                    brand: "Apple",
                    model: "Watch SB",
                    storage: "Belge"),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
