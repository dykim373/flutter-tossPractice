import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final Icon icon;
  final String name;
  final String money;
  const Account({
    super.key,
    required this.icon,
    required this.name,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF97979F),
                    ),
                  ),
                  Text(
                    money,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF45454C),
                    ),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              width: 55,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFFF4F3F4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  '송금',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF97979F),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
