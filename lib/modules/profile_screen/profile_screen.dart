import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sho_app/modules/profile_screen/editpassword_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';
import 'package:sho_app/shared/component/textFormFields.dart';

TextEditingController phoneLogInController = TextEditingController();

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final picker = ImagePicker();
    File? profileImage;
    Future<void> pickProfileImage() async {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          profileImage = File(pickedImage.path);
        });
      } else {
        print('no image selected');
      }
    }
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          title: Text(
            'البروفايل',
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
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      (profileImage == null)?  CircleAvatar(
                        backgroundColor: color1,
                        radius: 80.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.goodgallery.com/e5ba8caf-02ad-404d-b239-84f0f06ff99c/t/0400/2fkix8wm/black-white-portrait-photographer-baltimore-maryland.jpg'),
                      ):CircleAvatar(
                backgroundColor: color1,
                radius: 80.0,
                backgroundImage: FileImage(profileImage!),
              ),
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: color1,
                          child: IconButton(
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.grey,
                              size: 25.0,
                            ),
                            onPressed: ()   {
                              pickProfileImage();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  v1Space,
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'اسم المستخدم',
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 18.0,
                                    color: color3,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  DefaultTextField(
                    labelText: '',

                  ),
                  v1Space,
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'رقم الجوال',
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 18.0,
                                    color: color3,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  DefaultTextField(
                    controller: phoneLogInController,
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
                  v1Space,
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Text(
                          ' المدينة',
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 18.0,
                                    color: color3,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  DefaultDropdownButtonFormField(),
                  v2Space,
                  DefaultButton(
                    text: 'حفظ',
                    isSelect: true,
                    onPressed: () {

                    },
                  ),
                  v2Space,
                  DefaultButton1(
                    text: 'تغيير كلمة المرور',fontSize: 17.0,
                    onPressed: () {
                      navigateTo(context, EditPasswordScreen());
                    },
                  ),
                  v5Space,
                  v5Space,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
