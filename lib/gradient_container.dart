import 'package:second_app/image_roller.dart';
import 'package:second_app/styled_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
// Alignment? startAlignment; (instead of var , you can use Alignment?)
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({required this.color1, required this.color2, super.key});
  // const GradientContainer.purple({super.key})
  // : color1 = Colors.blue,
  //   color2 = Colors.black;

  final Color color1;
  final Color color2;
  var activeImage = 'assets/images/pic-2.png';

  ImageRoll() {
    activeImage = 'assets/images/pic-4.png';
    print('Changing image.....');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: ImageRoller(),
      ),
    );
  }
}
