import 'package:flutter/cupertino.dart';
import 'package:chips_choice/chips_choice.dart';

class ScrollableSinglechip extends StatefulWidget {
  const ScrollableSinglechip({super.key});

  @override
  State<ScrollableSinglechip> createState() => _ScrollableSinglechipState();
}

class _ScrollableSinglechipState extends State<ScrollableSinglechip> {
  int tag =1;
  List<String>options = [
    'Art',
    'Business',
    'Comedy',
    'Drama',
  ];
  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
        value: tag,
        onChanged: (val)=>setState(()=>tag=val),
      choiceItems:C2Choice.listFrom(
          source: options,
          value: (i,v)=>i,
          label: (i,v)=>v,
    ),
      choiceStyle:C2ChipStyle(
        iconColor: Color(0xFFF5F5FA),
      ),
    );
  }
}
