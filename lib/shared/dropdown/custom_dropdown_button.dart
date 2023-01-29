import 'package:flutter/material.dart';
import 'package:sugar/shared/theme.dart';
import 'dropdown_button2.dart';


class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String title;
  final String? prefixIcon;
  final Color? titleColor;
  final IconData? icon;
   const CustomDropdownButton({Key? key, required this.items, required this.title, this.prefixIcon, this.titleColor, this.icon})
      : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: Row(
          children: [
            if(widget.icon != null)...{
              Icon(widget.icon, color: ThemeManager.grey, size: 18),
              const SizedBox(width: 10),
            },
            Text(widget.title,
                style: Theme.of(context).textTheme.subtitle1!
                    .copyWith(fontSize: 16,color: ThemeManager.grey)),
          ],
        ),
        items: widget.items.map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    children: [
                      if(widget.prefixIcon != null)...{
                        Image.asset(
                          widget.prefixIcon!,
                          width: 23,
                          // height: 20.sp,
                        ),
                        const SizedBox(width: 10),
                      },
                      Text(item,
                          style: Theme.of(context).textTheme.subtitle1!
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                )).toList(),
        value: selectedValue,
        onChanged: (value) =>setState(()=>selectedValue = value as String),
        icon: const Icon(Icons.keyboard_arrow_down, color: ThemeManager.grey),
        buttonHeight: 45,
        buttonWidth: size.width,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ThemeManager.grey),
          color: Colors.white,
        ),
        buttonElevation: 0,
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: size.height*0.25,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          border: Border.all(color: ThemeManager.grey),
          borderRadius: BorderRadius.circular(10),
        //  color: ColorManager.primaryRed,
        ),
        dropdownOverButton: false,
        scrollbarRadius: const Radius.circular(20),
        scrollbarAlwaysShow: true,
        isExpanded: false,
        offset: const Offset(0, -3),
      ),
    );
  }
}
