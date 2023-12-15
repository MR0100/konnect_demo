import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../features/dashboard/data/dashboard_data.dart';
import '../../core.dart';

class CustomBottomNavigation extends StatefulWidget {
  final Function(int) onChange;
  final int initialPage;
  const CustomBottomNavigation({
    required this.initialPage,
    required this.onChange,
    super.key,
  });

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation>
    with TickerProviderStateMixin {
  // default selected index.
  int currentIndex = 0;

  List<AnimationController> animationControllerList = [];
  List<Animation> animationList = [];

  @override
  void initState() {
    for (var _ in bottomNavigationBarItems) {
      animationControllerList.add(AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        reverseDuration: const Duration(milliseconds: 100),
      ));
    }

    for (var controller in animationControllerList) {
      animationList
          .add(Tween<double>(begin: 0.0, end: 1.0).animate(controller));
    }

    currentIndex = widget.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        bottomNavigationBarItems.length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (currentIndex != index) {
                  animationControllerList[index].forward().then(
                        (value) => animationControllerList[index].reverse(),
                      );
                  setState(() {
                    currentIndex = index;
                  });
                  widget.onChange(currentIndex);
                }
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedBuilder(
                    animation: animationList[index],
                    builder: (context, child) {
                      return Container(
                        height: 40 * animationList[index].value as double,
                        width: 40 * animationList[index].value as double,
                        decoration: BoxDecoration(
                          color: VariableUtilities.theme.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: VariableUtilities.theme.black,
                            width: 2,
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    color: VariableUtilities.theme.transparent,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      currentIndex == index
                          ? bottomNavigationBarItems[index]["selectedIcon"]
                          : bottomNavigationBarItems[index]["icon"],
                      height: 20.hPr(context),
                      width: 20.wPr(context),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
