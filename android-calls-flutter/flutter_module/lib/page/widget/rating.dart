import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  Rating(this.stars);

  final int stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: getIcons(stars),
    );
  }

  List<Icon> getIcons(int stars) {
    final listIcons = <Icon>[];
    if (stars == 0) {
      listIcons.addAll(List.generate(5, (i) => Icon(Icons.star, color: Colors.grey)));
    } else if (stars == 1) {
      listIcons.add(Icon(Icons.star, color: Colors.yellow));
      listIcons.addAll(List.generate(4, (i) => Icon(Icons.star, color: Colors.grey)));
    } else if (stars == 2) {
      listIcons.addAll(List.generate(2, (i) => Icon(Icons.star, color: Colors.yellow)));
      listIcons.addAll(List.generate(3, (i) => Icon(Icons.star, color: Colors.grey)));
    } else if (stars == 3) {
      listIcons.addAll(List.generate(3, (i) => Icon(Icons.star, color: Colors.yellow)));
      listIcons.addAll(List.generate(2, (i) => Icon(Icons.star, color: Colors.grey)));
    } else if (stars == 4) {
      listIcons.addAll(List.generate(4, (i) => Icon(Icons.star, color: Colors.yellow)));
      listIcons.addAll(List.generate(1, (i) => Icon(Icons.star, color: Colors.grey)));
    } else if (stars == 5) {
      listIcons.addAll(List.generate(5, (i) => Icon(Icons.star, color: Colors.yellow)));
    }
    return listIcons;
  }

}
