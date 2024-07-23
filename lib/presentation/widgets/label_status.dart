import 'package:flutter/material.dart';

class LabelStatus extends StatelessWidget {
  final String data;
  final IconData iconData;
  final double sizeIcon;
  const LabelStatus({
    super.key,
    required this.data,
    this.iconData = Icons.circle,
    this.sizeIcon = 10,
  });

  @override
  Widget build(BuildContext context) {
    //final colors = ThemeData().colorScheme;
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(193, 12, 56, 2),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Row(
          children: [
            Center(
              child: Icon(
                iconData,
                color: data == 'Alive'
                    ? const Color.fromARGB(255, 6, 255, 14)
                    : const Color.fromARGB(255, 255, 17, 0),
                size: sizeIcon,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              data,
            )
          ],
        ),
      ),
    );
  }
}

//Incon And text
class IconAndText extends StatelessWidget {
  final String data;
  final IconData? iconData;
  final double sizedData;

  const IconAndText({
    super.key,
    required this.data,
    this.iconData,
    this.sizedData = 15,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(
        data,
        style: TextStyle(fontSize: sizedData),
      ),
      icon: Icon(
        iconData,
        size: sizedData,
      ),
    );
  }
}
