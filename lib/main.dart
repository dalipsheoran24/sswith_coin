
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(100.0, 0, 0, 0),
          child: Text("Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 280.0, 0),
                  child: Text(("Total Worth")),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Rs.7017",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 7.0, 200.0, 0),
                        child: Icon(Icons.timer),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(7.0, 0, 30.0, 0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Text(
                    'BUY BITCOIN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'DEPOSIT INR',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 120.0,
            width: 350.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'Assets/images/Bitcoin.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(('Popular Currencies'),
                    style: TextStyle(
                      fontSize: 20,
                    ),

                  ),
                ),
              )
            ],
          ),
         Expanded(
           child: ListView(
             children: [
              columnInfo("Bitcoin","BTC", "RS 3345533", "-33.54%"),
               columnInfo("Ethereum","ETH", "RS 224729", "-21.54%"),
               columnInfo("Waves","WAVES", "RS 2229", "+16.4%"),
               columnInfo("Digbyte","DGB", "RS 7.54", "-7.51%"),
               columnInfo("Dotecoin","DOGE", "RS 32.54", "+2.45%"),
               columnInfo("Terra","LUNA", "RS 791.84", "-33.76%"),
               columnInfo("Tezos","XTZ", "RS 337.49", "+1.73%"),
               columnInfo("Elrond","EGLD", "RS 9517.56", "-4.77%"),

             ],
           ),
         )
        ],
      ),
    );
  }

  Column columnInfo(String coin,String name, String rate,String percent) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),

                        )),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon (Icons.info_sharp),
                        ),
                        Column(
                          children: [
                            Text(coin ,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                            ),
                            Text(name,
                            style: TextStyle(
                              fontSize: 12,

                            ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),

                              child: Text(rate,
                                style: TextStyle(
                                  fontSize: 20,

                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child: Text(percent,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
  }
}
