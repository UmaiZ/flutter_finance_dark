import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_finance_dark/helper/colors.dart';
import 'package:flutter_finance_dark/screens/drawer.dart';
import 'package:flutter_finance_dark/widgets/transactioncard.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    final res_height = MediaQuery.of(context).size.height;
    final res_width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.more_vert,
            size: 25,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: res_height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Cards",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "You have 3 active cards",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                color: Color(0xffffd674),
                textColor: Colors.black,
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
                shape: CircleBorder(),
                padding: EdgeInsets.all(8.0),
                minWidth: 0,
              )
            ],
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/chip.png',
                    width: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "4562 1122 4595 7852",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "Ghulam",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiray Date",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "24/2021",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/mastercard.png',
                        width: 50,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          Text(
            "Recent Transactions",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          TransactionWidget(
              ammount: "+\$2,010",
              date: "June 14",
              image: 'assets/images/burger.png',
              title: "KFC"),
          SizedBox(
            height: res_height * 0.015,
          ),
          TransactionWidget(
              ammount: "+\$12,010",
              date: "June 28",
              image: 'assets/images/paypal.png',
              title: "Paypal"),
          SizedBox(
            height: res_height * 0.015,
          ),
          TransactionWidget(
              ammount: "+\$232,010",
              date: "Aug 28",
              image: 'assets/images/maintenance.png',
              title: "Car Repair")
        ],
      ),
    );
  }
}
