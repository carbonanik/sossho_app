import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isCompleted;
  final IconData? iconData;
  final Color? color;
  final String title;
  final String subtitle;
  final DateTime? time;

  const MyTimelineTile({
    this.isFirst = false,
    this.isLast = false,
    this.isCompleted = false,
    this.iconData,
    this.color,
    required this.title,
    required this.subtitle,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: time != null
                ? [
                    Text(
                      DateFormat.MMMd().format(time!),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.jm().format(time!).toLowerCase(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                : [],
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 40,
          child: TimelineTile(
            isFirst: isFirst,
            isLast: isLast,
            beforeLineStyle: const LineStyle(
              color: Colors.grey,
              thickness: 2,
            ),
            indicatorStyle: IndicatorStyle(
                color: isCompleted
                    ? (color ?? CupertinoColors.systemGreen)
                    : Colors.grey,
                width: 40,
                iconStyle: IconStyle(
                  iconData: iconData ?? Icons.done,
                  color: Colors.white,
                )),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                )
              ),
              Text( subtitle),
            ],
          ),
        )
      ],
    );
  }
}
