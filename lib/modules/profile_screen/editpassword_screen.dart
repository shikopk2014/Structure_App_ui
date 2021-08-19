import 'package:flutter/material.dart';
import 'package:sho_app/modules/main_screen/main_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';
import 'package:sho_app/shared/component/textFormFields.dart';

class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          title: Text(
            'تغيير كلمة المرور',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        backgroundColor: color1,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  v3Space,
                  DefaultTextField(
                    labelText: 'كلمة المرور القديمة',
                  ),
                  v2Space,
                  DefaultTextField(
                    labelText: 'كلمة المرور الجديدة',
                  ),
                  v2Space,
                  DefaultTextField(
                    labelText: 'تأكيد كلمة المرور الجديدة',
                  ),
                  v5Space,
                  DefaultButton(
                    icon: Icons.save,
                    isIcon:true ,
                    isSelect: true,
                    text: 'حفظ',
                    onPressed: (){
                      navigateTo(context, MainScreen());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
