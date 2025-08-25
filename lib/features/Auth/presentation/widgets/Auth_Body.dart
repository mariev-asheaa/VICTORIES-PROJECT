import 'package:flutter/cupertino.dart';
import 'package:hykaity/generated/assets.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key, required this.child, required this.image});
final Widget child;
final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: Image.asset(Assets.imagesLogInImage2)
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height*.7,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0x2D797979),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
            ),
            child: child,
          ),
        ),
        Positioned(
            left: 0,
            bottom: MediaQuery.sizeOf(context).height*.64,
            child: Image.asset(image)
        ),
      ],
    );
  }
}
