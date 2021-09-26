import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class PageSelector extends StatelessWidget {
  const PageSelector({Key? key, required this.selectedPage, required this.onSelect}) : super(key: key);

  final int selectedPage;
  final Function(int page) onSelect;

  @override
  Widget build(BuildContext context) {
    List<Widget> pageButtons = [Spacer()];
    for (int i = 1; i <= 8; i++) {
      pageButtons.add(_PageButton(number: i, isSelected: i == selectedPage, onTap: onSelect));
      pageButtons.add(Spacer(flex: 2));
    }
    pageButtons.last = Spacer();

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: pageButtons
        ),
      )
    );
  }
}


class _PageButton extends StatelessWidget {
  const _PageButton({Key? key, required this.number, required this.isSelected, required this.onTap})
      : super(key: key);

  final int number;
  final bool isSelected;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: GestureDetector(
        onTap: () {
          if (!isSelected) onTap(number);
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform(
              transform: Matrix4.skewX(-0.2),
              alignment: Alignment.center,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final size = min(constraints.maxWidth, constraints.maxHeight);

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      height: size,
                      width: size,
                      color: isSelected ? redStopgameColor : Colors.grey[600]
                    ),
                  );
                }
              ),
            ),
            Text(
              '${number.toString()}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              )
            )
          ],
        ),
      )
    );
  }
}
