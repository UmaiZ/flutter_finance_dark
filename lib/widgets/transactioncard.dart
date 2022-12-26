import 'package:flutter/material.dart';

import 'package:flutter_finance_dark/helper/colors.dart';

class TransactionWidget extends StatelessWidget {
  final title;
  final image;
  final date;
  final ammount;
  const TransactionWidget(
      {super.key,
      required this.ammount,
      required this.date,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ksecondarycolor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Image.asset(
            image,
            color: Colors.white,
            width: 30,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            date,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          trailing: Text(
            ammount,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
