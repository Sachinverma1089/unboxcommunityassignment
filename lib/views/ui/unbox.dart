import 'package:assignmentondc/controllers/pageroutewidget.dart';
import 'package:assignmentondc/views/shared/appstyle.dart';
import 'package:assignmentondc/views/ui/payment.dart';
import 'package:flutter/material.dart';

class UnBoxPage extends StatefulWidget {
  const UnBoxPage({super.key});
  _UnBoxPageState createState() => _UnBoxPageState();
}

class _UnBoxPageState extends State<UnBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Text(
          "UnBox",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
      body: Column(
        children: [
          Container(
            height: 140,
            color: Color(0xFF121212),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 12, right: 12, bottom: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shopping Address",
                            style: appstyle(14, Colors.white.withOpacity(0.35),
                                FontWeight.normal),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Home",
                            style: appstyle(16, Colors.white, FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Sector 3, Magarpatta City",
                            style: appstyle(14, Colors.white.withOpacity(0.35),
                                FontWeight.bold),
                          ),
                          Text(
                            "Pune - 462034",
                            style: appstyle(14, Colors.white.withOpacity(0.35),
                                FontWeight.bold),
                          ),
                          Text(
                            "Mobile: 9871xxxxxx",
                            style: appstyle(14, Colors.white.withOpacity(0.35),
                                FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.drive_file_rename_outline,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
              child: Row(
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2.0, color: Colors.white.withOpacity(0.35)),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "Get ₹ 1500 Cashback",
                        style: appstyle(18, Colors.white, FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * .73,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                          color: Colors.white.withOpacity(0.3), width: 1)),
                  color: Color(0xFF121212),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF121212),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: const Color(0xff242323)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black26),
                      child: Column(children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 1, right: 5, left: 5, bottom: 1)),
                              Expanded(child: SizedBox()),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.cancel),
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "Samsung",
                            style: appstyle(18, Colors.white.withOpacity(0.35),
                                FontWeight.bold),
                          ),
                        ),
                        Row(
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
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "S90C OLED",
                                        style: appstyle(
                                            15, Colors.white, FontWeight.bold),
                                      ),
                                      Text(
                                        "Color: Black Matte",
                                        style: appstyle(
                                            14,
                                            Colors.white.withOpacity(0.6),
                                            FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "₹ 2,84,990",
                                        style: appstyle(
                                            14,
                                            Colors.white.withOpacity(0.3),
                                            FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 2, color: Colors.white)),
                                        child: IconButton(
                                            padding: EdgeInsets.zero,
                                            alignment: Alignment.center,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 18,
                                            )),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 35,
                                        child: Center(
                                          child: Text("01",
                                              style: appstyle(16, Colors.white,
                                                  FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 2, color: Colors.white)),
                                        child: IconButton(
                                            padding: EdgeInsets.zero,
                                            alignment: Alignment.center,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 18,
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.symmetric(
                                  horizontal: BorderSide(
                                      width: 2,
                                      color: Colors.white.withOpacity(0.37)))),
                          height: 40,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Total:",
                                    style: appstyle(
                                        18,
                                        Colors.white.withOpacity(0.37),
                                        FontWeight.normal)),
                                Text("₹ 2,84,990",
                                    style: appstyle(
                                        18, Colors.orange, FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Text(
                                                  "Product Details",
                                                  style: appstyle(
                                                      13,
                                                      Colors.white
                                                          .withOpacity(0.37),
                                                      FontWeight.normal),
                                                )),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 65,
                                                  width: 65,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Samsung S90C OLED",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "36.0 MP/36.3 MP Digital SLR Camera",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "(Black + SanDisk 128GB,)",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "Extreme Pro SDXC UHS-I Card-C10",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "U3, V30, 4K, UHD, SD Card",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 14,
                                                  color: Colors.white),
                                            ))
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Text(
                                                  "Seller",
                                                  style: appstyle(
                                                      13,
                                                      Colors.white
                                                          .withOpacity(0.37),
                                                      FontWeight.normal),
                                                )),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 65,
                                                  width: 65,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "Ground Floor,Indraprastha Equinox,",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "23, 100 Feet Rd, Venkappa Garden",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                  Text(
                                                      "Koramangaia, Banglore - 560095",
                                                      style: appstyle(
                                                          12,
                                                          Colors.white
                                                              .withOpacity(
                                                                  0.37),
                                                          FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 14,
                                                  color: Colors.white),
                                            ))
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 15, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Order Status Update",
                        style: appstyle(18, Colors.white, FontWeight.normal),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 15, top: 4),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange)),
                        onPressed: () {},
                        child: Text("Checkout",
                            style:
                                appstyle(18, Colors.white, FontWeight.normal))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
