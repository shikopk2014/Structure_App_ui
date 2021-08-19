
import 'package:flutter/material.dart';
import 'package:sho_app/modules/login_screen/login_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';
import 'package:sho_app/shared/component/textFormFields.dart';
import 'package:sho_app/shared/component/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final vPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showPassword1 = true;

  bool showPassword2 = true;

  bool isActive1 = true;

  bool isActive2 = false;

  bool isActive3 = false;
  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Container(
                    height: 160.0,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/pic.png',
                    ),
                  ),
                  v3Space,
                  CurvedDesign(
                    height: 1000.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'تسجيل جديد',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            'باشر بالتسجيل لدينا',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Color(0xffC1C1C2),
                                    fontWeight: FontWeight.bold),
                          ),
                          v1Space,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: DefaultButton(
                                    isSelect: isActive1,
                                    text: 'مهندس',
                                    width: 120.0,
                                    height: 45.0,
                                    fontSize: 12.0,
                                    onPressed: () {
                                      setState(() {
                                        isActive1 = true;
                                        isActive2 = false;
                                        isActive3 = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              h1Space,
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: DefaultButton(
                                    isSelect: isActive2,
                                    text: 'مدير مشارع',
                                    width: 120.0,
                                    height: 45.0,
                                    fontSize: 12.0,
                                    onPressed: () {
                                      setState(() {
                                        isActive1 = false;
                                        isActive2 = true;
                                        isActive3 = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              h1Space,
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: DefaultButton(
                                    isSelect: isActive3,
                                    text: 'محاسب',
                                    width: 120.0,
                                    height: 45,
                                    fontSize: 12.0,
                                    onPressed: () {
                                      setState(() {
                                        isActive1 = false;
                                        isActive2 = false;
                                        isActive3 = true;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          v3Space,
                          DefaultTextField(
                            controller: nameController,
                            labelText: '      اسم المستخدم',
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'يجب عليك ادخال اسم المسخدم';
                              }
                            },
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          v2Space,
                          DefaultTextField(
                            controller: phoneController,
                            labelText: '      رقم الجوال',
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'يجب عليك ادخال رقم الجوال';
                              }
                            },
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          v2Space,
                          Container(
                            height: 70.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
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
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
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
                          ),
                          v2Space,
                          DefaultTextField(
                            controller: passwordController,
                            labelText: '      كلمة المرور',
                            obscureText: showPassword2,
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: showPassword2
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixPressed: () {
                              setState(() {
                                showPassword2 = !showPassword2;
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'يجب عليك ادخال كلمة المرور';
                              }
                            },
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          v2Space,
                          DefaultTextField(
                            controller: vPasswordController,
                            labelText: '      تأكيد كلمة المرور',
                            obscureText: showPassword1,
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: showPassword1
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixPressed: () {
                              setState(() {
                                showPassword1 = !showPassword1;
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'يجب عليك ادخال  تأكيد كلمة المرور';
                              }
                            },
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          v2Space,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'اضف صورة',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold),
                              ),
                              ImagePickerButton(
                                onPressed: () {
                                },
                              ),
                            ],
                          ),
                          v3Space,
                          DefaultButton(
                            isSelect: true,
                            text: 'تسجيل',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print(phoneController.text);
                                print(passwordController.text);
                                print(nameController.text);
                                print(phoneController.text);
                                navigateTo(context, LoginScreen());
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'هل لديك حساب ؟ ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextButton(
                                  child: Text('تسجل دخول',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff00A79C))),
                                  onPressed: () {
                                    navigateTo(context, LoginScreen());
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
