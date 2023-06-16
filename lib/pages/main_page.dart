import 'dart:io';

import 'package:arzygul/widgets/app_text_styles.dart';
import 'package:arzygul/widgets/custom_button.dart';
import 'package:arzygul/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String surname = '';
  String name = '';
  String lastname = '';
  String age = '';
  String work = '';
  String monthYear = '';
  String pin = '';
  String image = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Имя',
                        onChanged: (value) {
                          setState(() {
                            surname = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Фамилия',
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Отчество',
                        onChanged: (value) {
                          setState(() {
                            lastname = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Возраст',
                        onChanged: (value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Место работы',
                        onChanged: (value) {
                          setState(() {
                            work = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'АЙ/ЖЫЛ',
                        onChanged: (value) {
                          setState(() {
                            monthYear = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'ПИН',
                        onChanged: (value) {
                          setState(() {
                            pin = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomButton(
                        text: 'Загрузить фото',
                        onPressed: () async {
                          final ImagePicker picker = ImagePicker();
                          final XFile? imageFile = await picker.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (imageFile != null) {
                            setState(
                              () {
                                image = imageFile.path;
                              },
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: image.isEmpty
                                  ? Container()
                                  : Image.file(
                                      File(image),
                                    ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'К. БАЯЛИНОВ АТЫНДАГЫ РБЖК',
                                    style: AppTextStyles.s19W700(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    'ОКУРМАНДЫН БИЛЕТИ',
                                    style: AppTextStyles.s19W700(
                                      color: Colors.red,
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '$surname $name $lastname',
                                    style: AppTextStyles.s19W700(
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    age,
                                    style: AppTextStyles.s19W700(
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'ОКУГАН ЖЕРИ/ ЖУМУШУ',
                                            style: AppTextStyles.s14W600(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          Text(
                                            work,
                                            style: AppTextStyles.s14W600(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            'АЙ/ ЖЫЛ',
                                            style: AppTextStyles.s14W600(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          Text(
                                            monthYear,
                                            style: AppTextStyles.s14W600(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Divider(color: Colors.black),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'СИЗДИН PIN',
                                  style: AppTextStyles.s14W600(
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  pin,
                                  style: AppTextStyles.s19W600(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              'ШТРИХ КОД',
                              style: AppTextStyles.s19W600(
                                color: Colors.blue,
                              ),
                            ),
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
    );
  }
}
