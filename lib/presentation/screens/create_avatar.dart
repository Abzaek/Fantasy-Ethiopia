import 'package:faq/util/colors.dart';
import 'package:faq/util/custom_field.dart';
import 'package:faq/util/my_button.dart';
import 'package:faq/util/paddings.dart';
import 'package:flutter/material.dart';
import 'package:faq/util/avatar.dart';

void main() {
  runApp(const CreateAvatar());
}

class CreateAvatar extends StatelessWidget {
  const CreateAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: CustomColors.lightPrimary,
                    ),
                  )),
          title: const Text(
            'Create Avatar',
            style: TextStyle(color: CustomColors.lightPrimary),
          ),
          centerTitle: true,
          backgroundColor: CustomColors.darkPrimary,
        ),
        drawer: const Drawer(),
        body: const Padding(
          padding: EdgeInsets.symmetric(
              vertical: CustomPadding.large, horizontal: CustomPadding.small),
          child: Column(
            children: [
              SizedBox(
                height: 48,
              ),
              CustomAvatar(dir: 'assets/profile.png'),
              SizedBox(
                height: 25,
              ),
              CustomTextFIeld(
                label: 'Name',
                hintText: 'eg. Abdulazez',
              ),
              SizedBox(
                height: 36,
              ),
              CustomTextFIeld(
                label: 'Club',
                hintText: 'eg. Arsenal',
              ),
              SizedBox(
                height: 36,
              ),
              CustomTextFIeld(
                label: 'Position',
                hintText: 'eg. forward',
              ),
              SizedBox(
                height: 36,
              ),
              CustomButton(child: 'Create Avatar'),
            ],
          ),
        ),
      ),
    );
  }
}