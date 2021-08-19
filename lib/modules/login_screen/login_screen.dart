import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sho_app/modules/main_screen/main_screen.dart';
import 'package:sho_app/modules/register_screen/register_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';
import 'package:sho_app/shared/component/textFormFields.dart';
import 'package:sho_app/shared/component/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneLogInController = TextEditingController();
  final passwordLogInController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isSelected = true ;
  bool showPassword = true ;

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
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 650.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'أهلآ بك وبعودتك',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                    fontWeight: FontWeight.bold,fontSize: 25.0),
                              ),
                              Text(
                                'باشر بالدخول لحساب لدينا',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Color(0xffC1C1C2),
                                        fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          v2Space,
                          DefaultTextField(
                            controller:phoneLogInController ,
                            labelText: '      رقم الجوال',
                            keyboardType: TextInputType.phone,
                            validator: (value){
                              if(value!.isEmpty){
                                return 'يجب عليك ادخال رقم الجوال' ;
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
                            controller: passwordLogInController,
                            labelText: '      كلمة المرور',
                            obscureText: showPassword ,
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: showPassword? Icons.visibility : Icons.visibility_off,
                            suffixPressed: (){
                              setState(() {
                                showPassword = !showPassword ;
                              });
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'يجب عليك ادخال كلمة المرور' ;
                              }
                            },
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },

                          ),
                          v3Space,
                          DefaultButton(
                            isSelect: true,
                            text: 'استمرار',

                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print(phoneLogInController.text);
                                print(passwordLogInController.text);
                                navigateTo(context,MainScreen());
                              }
                            },
                          ),
                          v3Space,
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 2.0,
                                width: 65.0 ,
                              ),
                              h1Space,
                              Text(
                                'ليس لديك حساب ؟ ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                                ),
                              ),
                              h1Space,
                              Container(
                                color: Colors.grey,
                                height: 2.0,
                                width:  65.0 ,
                              ),
                            ],
                          ),
                          v2Space,
                          DefaultButton1(
                              text: 'تسجيل جديد',
                            onPressed: (){
                                navigateTo(context,RegisterScreen());
                            },
                          ),

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
