part of 'pages.dart';

class CommentText extends StatelessWidget {
  final Widget child;

  const CommentText({
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
            child: Image.asset("../assets/images/topdetail.png",
                width: size.width),
          ),
          child
        ],
      ),
    );
  }
}
