import 'package:flutter/material.dart';

import '../../colors/color.dart';
import '../../models/SpecialOffer/special.dart';

class Specialoffer extends StatefulWidget {
  const Specialoffer({
    super.key,
  });

  @override
  State<Specialoffer> createState() => _SpecialofferState();
}

class _SpecialofferState extends State<Specialoffer> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Today's Special Offers",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 3,
                    offset: Offset.zero,
                    color: homepage[2])
              ],
              borderRadius: BorderRadius.circular(10),
              color: homepage[3],
              shape: BoxShape.rectangle),
          height: 145,
          width: 335,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                todaySpecial[0].photo,
                width: 200,
                height: 310,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text(
                    '    ${todaySpecial[0].name}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  const Text('Now'),
                   Text(
                    todaySpecial[0].price,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    todaySpecial[0].offPerentage,
                    style: TextStyle(
                        color: homepage[0], fontWeight: FontWeight.bold),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset.zero,
                              color: homepage[4],
                            )
                          ],
                          borderRadius: BorderRadius.circular(3),
                          color: homepage[3]),
                      height: 30,
                      width: 90,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(color: homepage[4]),
                        ),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
