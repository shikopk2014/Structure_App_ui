import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class DefaultButton extends StatelessWidget {
  final IconData? icon;

  final bool? isIcon;
  final double? fontSize;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final bool isSelect;

  const DefaultButton({
    this.icon = Icons.print,
    this.isIcon = false,
    this.fontSize = 20.0,
    this.height = 70.0,
    required this.onPressed,
    this.color,
    required this.text,
    this.width = double.infinity,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: isSelect ? Color(0xff00A79C) : Color(0xff949291),
      ),
      width: width,
      child: MaterialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: isIcon!
                    ? Icon(
                        icon,
                        color: Colors.white,
                      )
                    : null,
              ),
              h0Space,
              Text(
                '$text',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: fontSize,
                    ),
              ),
            ],
          ),
          onPressed: onPressed),
    );
  }
}

class DefaultButton1 extends StatelessWidget {
  final double? fontSize;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;

  final bool isSelect;

  const DefaultButton1({
    this.height = 75.0,
    required this.onPressed,
    this.color = Colors.white,
    required this.text,
    this.width = double.infinity,
    this.isSelect = false,
    this.fontSize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(5.0),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      width: width,
      child: OutlineButton(
        highlightColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        highlightedBorderColor: Color(0xff00A79C),
        borderSide: BorderSide(
          width: 2.2,
          color: Color(0xff00A79C),
        ),
        onPressed: onPressed,
        child: Text(
          '$text',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                color: Color(0xff00A79C),
              ),
        ),
      ),
    );
  }
}

class ServicesButton extends StatelessWidget {
  final double? fontSize;
  final String title;
  final IconData? icon;
  final bool isIcon;
  final VoidCallback? onPressed;
  final bool isArrow;

  const ServicesButton(
      {Key? key,
      this.fontSize = 22.0,
      this.onPressed,
      this.icon,
      required this.title,
      required this.isIcon,
      required this.isArrow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var height=MediaQuery.of(context).size.height ;
    var width = MediaQuery.of(context).size.width;
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
        height: 60.0,
        width: width,
        child: Material(
            elevation: 4.0,
            color: color2,
            borderRadius: BorderRadius.circular(15.0),
            child: MaterialButton(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundColor: color4,
                        child: isIcon
                            ? Icon(
                                icon,
                                color: Colors.white,
                              )
                            : CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/pic.png',
                                ),
                                backgroundColor: color2,
                              ),
                      ),
                      h4Space,
                      Text(
                        '$title',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: fontSize),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  h6Space,
                  Container(
                    child: isArrow
                        ? Icon(
                            Icons.arrow_forward,
                            color: color4,
                            size: 30.0,
                          )
                        : null,
                  ),
                ],
              ),
              onPressed: onPressed,
            )),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;

  const DrawerButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: SizedBox(
        height: 50.0,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 5.0,
          color: Colors.white,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red.shade800,
                    size: 20.0,
                  ),
                  h2Space,
                  Text(
                    '$title',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            ),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}

class ImagePickerButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ImagePickerButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: color5,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: MaterialButton(
                child: Icon(
                  Icons.add_photo_alternate,
                  size: 30.0,
                  color: Colors.grey.shade600,
                ),
                onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
