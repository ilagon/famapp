import 'package:famapp/components/custom_container.dart';
import 'package:famapp/constants/color_palette.dart';
import 'package:famapp/diego_feeder/diego_feeder_service.dart';
import 'package:flutter/material.dart';

class DiegoFeeder extends StatefulWidget {
  const DiegoFeeder({Key? key}) : super(key: key);

  @override
  State<DiegoFeeder> createState() => _DiegoFeederState();
}

class _DiegoFeederState extends State<DiegoFeeder> {
  final DiegoFeederService _diegoFeeder = DiegoFeederService();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last given treats by:\n${_diegoFeeder.getLastFed()}",
                style: const TextStyle(color: textColor),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(textColor),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(secondaryColor),
                ),
                onPressed: () {},
                child: const Text(
                  "Feed Now",
                  style: TextStyle(color: textColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
