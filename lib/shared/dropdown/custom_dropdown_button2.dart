// import 'package:flutter/material.dart';
// import 'package:sugar/shared/theme.dart';
// import 'dropdown_button2.dart';
//
// class CustomDropdownButton extends StatelessWidget {
//   final List<String> items;
//   final List<String?>? imgs;
//   final String title;
//   final IconData? icon;
//   final String? selectedValue;
//   final Color? titleColor;
//   final ValueChanged<String?>? onChanged;
//
//   const CustomDropdownButton(
//       {Key? key,
//       required this.items,
//       required this.title,
//       this.titleColor,
//       this.selectedValue,
//       this.onChanged,
//       this.imgs, this.icon})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2(
//         hint: Row(
//           children: [
//             icon != null ? Icon(icon) : Container(),
//             SizedBox(width: size.width * 0.02),
//             Text(title,
//                 style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                     color: titleColor ?? ThemeManager.greyLight,
//                     fontWeight: FontWeight.w600)),
//           ],
//         ),
//         items: List.generate(
//           items.length,
//           (index) => DropdownMenuItem<String>(
//             value: items[index],
//             child: FittedBox(
//               child: Row(
//                 children: [
//                   if (imgs !=null && imgs?[index] != null) ...{
//                     Padding(
//                       padding: const EdgeInsets.only(right: 8.0),
//                       child: Image.asset(
//                         imgs![index]?.toString() ?? '',
//                         height: size.longestSide * 0.022,
//                         width: size.longestSide * 0.022,
//                       ),
//                     ),
//                   },
//                   Text(items[index],
//                       style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                           color: items[index] == selectedValue
//                               ? ThemeManager.blue
//                               : null)),
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//         // items
//         //     .map(
//         //       (item) => DropdownMenuItem<String>(
//         //         value: item,
//         //         child: FittedBox(
//         //           child: Row(
//         //             children: [
//         //               Text(item, style: Theme.of(context).textTheme.subtitle2!
//         //                   .copyWith(color:item == selectedValue ? ColorManager.primary : null)),
//         //             ],
//         //           ),
//         //         ),
//         //       ),
//         //     )
//         //     .toList(),
//         value: selectedValue,
//         onChanged: onChanged,
//         icon: const Icon(Icons.keyboard_arrow_down),
//         buttonHeight: 0,
//         buttonWidth: size.width,
//         buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//         buttonDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: ThemeManager.grey),
//           color: Colors.white,
//         ),
//         buttonElevation: 2,
//         itemHeight: size.longestSide * 0.05,
//         // height of each item
//         itemPadding: const EdgeInsets.only(left: 14, right: 14),
//         dropdownMaxHeight: size.longestSide * 0.22,
//         // max height of dropdown
//         dropdownPadding: null,
//         dropdownDecoration: BoxDecoration(
//             border: Border.all(color: ThemeManager.grey),
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20)),
//         dropdownOverButton: false,
//         scrollbarRadius: const Radius.circular(20),
//         scrollbarAlwaysShow: true,
//         iconSize: 24,
//         isExpanded: false,
//         offset: const Offset(0, -3),
//       ),
//     );
//   }
// }
