# dashboard_slider

This library contains necessary widgets for chat application ui. All the components are customizable.

* Github: https://github.com/firojandev/dashboard-slider

## Features

* Slider
* item count display

<img src="https://raw.githubusercontent.com/firojandev/dashboard-slider/main/assets/dashboard.png" width="450">

## Getting started

To use this widget there is not any special requirement. IF you have flutter installed you can directly start using this.

## How to Use

**Add This Library:**

Add this line to your dependencies:

```
dashboard_slider: ^0.0.1
```

Then you just have to import the package with

```
import 'package:dashboard_slider/dashboard_slider.dart';
```

**Sample Uses**

```
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  //You can set own page title
  String pageTitle = "Demo";
  
  //You can set card height
  double sliderCardHeight = 200;

 //Make a slider slider list of you
  List<SliderModel> sliderModels = [
    SliderModel(Colors.orange, "Slider 1", "0"),
    SliderModel(Colors.blue, "Slider 2", "1"),
  ];

//Make a count card item list
  List<ItemModel> myList = [
    ItemModel(Icons.account_circle, Colors.indigo, "Title 1", 1, "0"),
    ItemModel(Icons.account_tree, Colors.blue, "Title 2", 5, "1"),
    ItemModel(Icons.woman, Colors.red, "Title 3", 10, "2")
  ];
  
  //You can call the Dashboard widget by passing agrument like below

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(
          pageTitle: pageTitle,
          sliderCardHeight: sliderCardHeight,
          sliderModels: sliderModels,
          onSliderSelected: (sliderModel) {
            print(sliderModel.title);
          },
          itemModels: myList,
          onItemSelected: (model) {
            print(model.title);
          }),
    );
  }
}
```


## Conclusion

This is an initial release of the package. If you find any issue please let me know I will fix it accordingly.