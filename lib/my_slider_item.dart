import 'package:flutter/material.dart';

import 'slider_model.dart';

class MySliderItem extends StatefulWidget {
  const MySliderItem(
      {super.key, required this.sliderModel, required this.onSliderSelected});

  final SliderModel sliderModel;
  final Function(SliderModel) onSliderSelected;

  @override
  State<MySliderItem> createState() => _MySliderItemState();
}

class _MySliderItemState extends State<MySliderItem> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: widget.sliderModel.color,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            widget.onSliderSelected.call(widget.sliderModel);
          },
          child: Text(widget.sliderModel.title),
        ),
      ),
    );
  }
}
