import 'package:flutter/material.dart';
import 'package:project/sqldb.dart';

SqlDb sqlDb = SqlDb();

Color c = const Color.fromARGB(255, 19, 33, 224);

Container Row1(String t, Icon i) {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 22,
            child: i,
          ),
        ),
        Text(
          t,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}

class Row2 extends StatefulWidget {
  @override
  State<Row2> createState() => _Row2State();
}

class _Row2State extends State<Row2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myColor(const Color.fromARGB(255, 255, 255, 255)),
              myColor(const Color.fromARGB(255, 247, 190, 2)),
              myColor(const Color.fromARGB(255, 242, 138, 129)),
              myColor(const Color.fromARGB(255, 251, 244, 118)),
              myColor(const Color.fromARGB(255, 205, 255, 144)),
              myColor(const Color.fromARGB(255, 215, 174, 252)),
              myColor(const Color.fromARGB(255, 175, 202, 250)),
              myColor(const Color.fromARGB(255, 230, 201, 169)),
            ],
          ),
        ));
  }

  Container myColor(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 22,
        child: IconButton(
          onPressed: () {
            setState(() {
              c = color;
            });
          },
          icon: c == color
              ? const Icon(
                  Icons.done_rounded,
                  color: Colors.black,
                )
              : const Icon(null),
        ),
      ),
    );
  }
}
