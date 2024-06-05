import 'package:assignmentondc/controllers/pageroutewidget.dart';
import 'package:assignmentondc/views/shared/appstyle.dart';
import 'package:assignmentondc/views/ui/unbox.dart';
import 'package:assignmentondc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final formKey = GlobalKey<FormState>();
  String _selecteddelivery = 'homedelivery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Text(
          "Payment",
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
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Column(
                            children: <Widget>[
                              FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15,
                                                    left: 25,
                                                    bottom: 1),
                                                child: Text(
                                                  "Delivery Type",
                                                  style: appstyle(
                                                      16,
                                                      Colors.white
                                                          .withOpacity(0.37),
                                                      FontWeight.normal),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: ListTile(
                                                      title: const Text(
                                                        'Home Delivery',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      ),
                                                      leading: Radio<String>(
                                                        activeColor:
                                                            Colors.orange,
                                                        value: 'homedelivery',
                                                        groupValue:
                                                            _selecteddelivery,
                                                        onChanged:
                                                            (String? value) {
                                                          setState(() {
                                                            _selecteddelivery =
                                                                value!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListTile(
                                                      title: const Text(
                                                        'Store Pickup',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      ),
                                                      leading: Radio<String>(
                                                        activeColor:
                                                            Colors.orange,
                                                        value: 'storepickup',
                                                        groupValue:
                                                            _selecteddelivery,
                                                        onChanged:
                                                            (String? value) {
                                                          setState(() {
                                                            _selecteddelivery =
                                                                value!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration:
                                                textInputDecoration.copyWith(
                                              fillColor: Colors.white
                                                  .withOpacity(0.37),
                                              labelText: "Credit Card",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration:
                                                textInputDecoration.copyWith(
                                              fillColor: Colors.white
                                                  .withOpacity(0.37),
                                              labelText:
                                                  "Consumer Durable Loan",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration:
                                                textInputDecoration.copyWith(
                                              fillColor: Colors.white
                                                  .withOpacity(0.37),
                                              labelText: "Wallets",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration:
                                                textInputDecoration.copyWith(
                                              fillColor: Colors.white
                                                  .withOpacity(0.37),
                                              labelText: "UPI Payment",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // bottom button
          Container(
            color: Color(0xFF121212),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 15, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.yellow),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Nikon",
                                style: appstyle(
                                    18, Colors.white, FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cancel),
                        ),
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
