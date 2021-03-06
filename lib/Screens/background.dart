part of'Screens.dart';


class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Opacity(opacity: 0.7,
              child:  Image.asset(
              "../assets/images/top11.png",
              width: size.width
            ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Opacity(opacity: 0.85,
              child:  Image.asset(
              "../assets/images/top2.png",
              width: size.width
            ),
            ),
          ),
          // Positioned(
          //   top: 50,
          //   right: 30,
          //   child: Image.asset(
          //     "../assets/images/main.png",
          //     width: size.width * 0.35
          //   ),
          // ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(opacity: 0.85,
              child:  Image.asset(
              "../assets/images/bottom1.png",
              width: size.width
            ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(opacity: 0.7,
              child:  Image.asset(
              "../assets/images/bottom2.png",
              width: size.width
            ),
            ),
          ),
          child
        ],
      ),
    );
  }
}