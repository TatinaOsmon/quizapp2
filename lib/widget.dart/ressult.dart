import 'package:flutter/material.dart';

class RessultIcons extends StatelessWidget {
  const RessultIcons({
    Key? key,
    required this.trueIcons,
  }) : super(key: key);
  final bool trueIcons;

  @override
  Widget build(BuildContext context) {
    return Icon(trueIcons ? Icons.check : Icons.close,
        color: trueIcons ? Colors.green : Colors.red);
  }
}
