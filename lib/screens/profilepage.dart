// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mosobolaje/utils/appStyle.dart';
import 'package:mosobolaje/widgets/appbar.dart';
import 'package:mosobolaje/widgets/profileinfo.dart';
import 'package:mosobolaje/widgets/sidebar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// import '../widgets/appbar.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  File? userimage;
 
  Future<void> _getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageselected = await picker.pickImage(source: ImageSource.gallery);

    if (userimage != null) {
      setState(() {
        userimage = File(imageselected!.path);
      });
    }
  }

  Future<void> showImageDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Profile Picture'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text('Take a picture'),
                  onTap: ()  async {
                     await ImagePicker().pickImage(source: ImageSource.camera);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text('Select from gallery'),
                  onTap: ()  {
                     _getImage();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // top bar title
        title: const Appbar(),
      ),
      drawer: const Drawer(
        child: Sidebar(),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: Styles.bgColor,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('assets/images/users/02.jpg'),
                              ),
                            )
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Username: Bode Onigbese',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'USERID: MOSOID',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Property Name: Ikeja Mosabolaje Estate'),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Property Address: Ikeja Lagos State'),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                 showImageDialog();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF068540),
                                  shadowColor: Colors.white,
                                ),
                                child: const Text('Change Picture')),
                            const Gap(10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shadowColor: Colors.white,
                                ),
                                child: const Text('Edit Profile')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(50),
          Column(
            children: const [
              ProfileInfo(firstText: 'Bode Onigbese', secondText: "FUllNAME"),
              Gap(10),
              ProfileInfo(firstText: '07031676845', secondText: "TELEPHONE"),
              Gap(10),
              ProfileInfo(
                  firstText: "bodeonigbese@gmail.com",
                  secondText: "Email Address"),
              Gap(10),
              ProfileInfo(
                  firstText: "OTA", secondText: "Present Resident Address"),
              Gap(10),
              ProfileInfo(firstText: "Command", secondText: "Other Address"),
              Gap(10),
              ProfileInfo(
                  firstText: "Single Parent", secondText: "Marital Status"),
              Gap(10),
              ProfileInfo(firstText: "12", secondText: "Family Size"),
              Gap(10),
              ProfileInfo(
                  firstText: "Gombe State", secondText: "State Of Origin"),
              Gap(10),
              ProfileInfo(
                  firstText: "AD0-ODO-OTA", secondText: "Local Govt Area"),
              Gap(10),
              ProfileInfo(
                  firstText: "Dalemo Market", secondText: "Place Of Work"),
              Gap(10),
              ProfileInfo(
                  firstText: "Dalemo Alakuko", secondText: "Business Address"),
              Gap(10),
              ProfileInfo(
                  firstText: "Frosen Food Seller",
                  secondText: "Type Of Businness"),
              Gap(60),
            ],
          ),
        ]),
      ),
    );
  }
}
