import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';


class CustomExpandableItem extends StatelessWidget {
  final String title;
  final String? icon;
  final Widget body;
  const CustomExpandableItem({Key? key, required this.title, this.icon, required this.body}) : super(key: key);

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
                      if(icon != null)
                        Image(
                          image: AssetImage(icon!),
                          height: 20,
                          width: 20,
                        ),
                      const Spacer(),
                      const Icon(Icons.arrow_drop_up),
                    ],
                  ),
                  const SizedBox(height: 3),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 10),
                  body,
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
                if(icon != null)
                  Image(
                    image: AssetImage(icon!),
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
