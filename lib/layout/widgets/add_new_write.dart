import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class AddNewWrite extends StatelessWidget {
  const AddNewWrite({Key? key}) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const AddNewWrite(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'إضافة قراءة جديدة',
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            height: 1,
            width: size.width,
            margin: const EdgeInsets.only(bottom: 20, top: 6),
            decoration: BoxDecoration(
              color: ThemeManager.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'سجل القراءة هنا',
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
          const SizedBox(height: 20),
          Align(
            child: SizedBox(
              width: size.width * 0.5,
              height: 45,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'اضافة',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
