import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var value;
const v1Space = SizedBox(
  height: 10.0,
);
const v2Space = SizedBox(
  height: 15.0,
);
const v3Space = SizedBox(
  height: 20.0,
);
const v4Space = SizedBox(
  height: 25.0,
);
const v5Space = SizedBox(
  height: 30.0,
);
const v6Space = SizedBox(
  height: double.infinity,
);
const h0Space = SizedBox(
  width: 5.0,
);
const h1Space = SizedBox(
  width: 10.0,
);
const h2Space = SizedBox(
  width: 15.0,
);
const h3Space = SizedBox(
  width: 20.0,
);
const h4Space = SizedBox(
  width: 25.0,
);
const h5Space = SizedBox(
  width: 30.0,
);
const h6Space = SizedBox(
  width: 50.0,
);
const h7Space = SizedBox(
  width: double.infinity,
);

const color1 = Color(0xffFAFAFA);
const color2 = Color(0xffF3F6FA);
const color3 = Color(0xff949291);
const color4 = Color(0xff00A79C);
const color5 = Color(0xffE7F0FF);
PreferredSizeWidget appBarConst() => AppBar(
      actions: [
        Image.asset(
          'assets/images/pic.png',
          width: 70.0,
        ),
      ],
      title: Text(
        'شركة اتحاد الماسة للمقاولات',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.black87,
        ),
      ),
    ); // appbar constant.

Widget divider({
  double? width,
  Color? color,
  double? height,
}) => Container(
      color: color = Colors.grey.shade400,
      width: width = double.infinity,
      height: height = 1.0,
    );





void navigateTo(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}



class Date extends StatelessWidget {
  final String dateText;

  const Date({
    Key? key,
    required this.dateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.0,
      child: Material(
        color: Colors.black54,
        elevation: 13.0,
        borderRadius: BorderRadius.circular(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$dateText',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
