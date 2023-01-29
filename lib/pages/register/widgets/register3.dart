import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sugar/shared/theme.dart';

class Register3 extends StatelessWidget {
  const Register3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children:  [
          const CustomExpandableItem(
            title: 'انسولين',
            icon: 'assets/images/insulin.png',
          ),
          SizedBox(height: size.height * 0.03),
          const CustomExpandableItem(
            title: 'اقراص',
            icon: 'assets/images/pills.png',
          ),
        ],
      ),
    );
  }
}

class CustomExpandableItem extends StatelessWidget {
  final String title;
  final String icon;
  const CustomExpandableItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ExpandableNotifier(
      initialExpanded: true,
      child: Expandable(
        collapsed: ExpandableButton(
            child:  Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(title),
                      const SizedBox(width: 5),
                      Image(
                        image: AssetImage(icon),
                        height: 20,
                        width: 20,
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_drop_up),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      filled: true,
                      isDense: false,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      fillColor: ThemeManager.greyLight,
                      border: InputBorder.none,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: ThemeManager.greyLight),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: ThemeManager.greyLight),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: 'الجرعة',
                          filled: true,
                          isDense: false,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          fillColor: ThemeManager.greyLight,
                          border: InputBorder.none,
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: ThemeManager.greyLight),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: ThemeManager.greyLight),
                          ),
                        ),
                      )),
                      SizedBox(width: 10),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: 'الوقت',
                          filled: true,
                          isDense: false,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          fillColor: ThemeManager.greyLight,
                          border: InputBorder.none,
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: ThemeManager.greyLight),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: ThemeManager.greyLight),
                          ),
                        ),
                      )),
                    ],
                  )
                ],
              ),
            )
        ),
        expanded: ExpandableButton(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children:  [
                Text(title),
                const SizedBox(width: 5),
                Image(
                  image: AssetImage(icon),
                  height: 20,
                  width: 20,
                ),
                const Spacer(),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
