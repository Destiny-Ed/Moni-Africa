import 'package:flutter/material.dart';

class CusterDetailsPage extends StatefulWidget {
  const CusterDetailsPage({Key? key}) : super(key: key);

  @override
  State<CusterDetailsPage> createState() => _CusterDetailsPageState();
}

class _CusterDetailsPageState extends State<CusterDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...List.generate(1000, (index) => Text("dkfkdfdf $index")),
      ],
    );
  }
}
