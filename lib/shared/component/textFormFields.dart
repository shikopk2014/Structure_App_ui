

import 'package:flutter/material.dart';
import 'package:sho_app/shared/component/constants.dart';

class DefaultTextField extends StatelessWidget {
  final Color? textColor;
  final Color? color;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String? labelText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final VoidCallback? suffixPressed;

  const DefaultTextField({
    this.textColor = Colors.grey,
    this.color = Colors.grey,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.labelText,
    this.keyboardType,
    this.controller,
    this.onFieldSubmitted,
    this.suffixPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: TextFormField(
        controller: controller,
        validator: validator,
        cursorColor: Color(0xffC1C1C2),
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(suffixIcon), color: color, onPressed: suffixPressed),
            labelStyle: TextStyle(
              color: textColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffC1C1C2),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}


class DefaultDropdownButtonFormField extends StatefulWidget {
  const DefaultDropdownButtonFormField({
    Key? key,
  }) : super(key: key);

  @override
  _DefaultDropdownButtonFormFieldState createState() =>
      _DefaultDropdownButtonFormFieldState();
}

class _DefaultDropdownButtonFormFieldState
    extends State<DefaultDropdownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: DropdownButtonFormField<dynamic>(
          isExpanded: true,
          validator: (value) {
            print(value);
          },
          value: value,
          onChanged: (newValue) {
            setState(() {
              value = newValue;
            });
          },
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // errorText: 'يجب عليك ادخال المدينة',
            labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            labelText: '      المدينة',
            hintText: 'اختر المدينة',
            // errorText: 'يجب عليك اختيار المدينه',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          items: <DropdownMenuItem>[
            DropdownMenuItem(
              child: Text('الرياض'),
              value: 'الرياض',
            ),
            DropdownMenuItem(
              child: Text('مكه'),
              value: 'مكه',
            ),
            DropdownMenuItem(
              child: Text('جده'),
              value: 'جده',
            ),
            DropdownMenuItem(
              child: Text('المدينه المنوره'),
              value: 'المدينه المنوره',
            ),
          ]),
    );
  }
}
