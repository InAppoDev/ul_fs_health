import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/locale_extension.dart';
import '../../../core/extensions/number_extension.dart';

class SimpleDropDownButton<T> extends StatelessWidget {
  const SimpleDropDownButton({
    super.key,
    required this.items,
    required this.onChanged,
    this.selectedItem,
    this.icon,
    this.offset,
    this.width,
  });

  final List<T> items;
  final ValueChanged<T?> onChanged;
  final T? selectedItem;
  final Widget? icon;
  final Offset? offset;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
          customButton: icon,
          iconStyleData: const IconStyleData(iconSize: 0),
          onChanged: (value) {
            onChanged(value);
          },
          value: selectedItem,
          dropdownStyleData: DropdownStyleData(
            padding: Gaps.large.paddingHorizontal.copyWith(
              top: Gaps.medium,
              bottom: Gaps.medium,
            ),
            // useSafeArea: true,
            elevation: 1,
            maxHeight: MediaQuery.sizeOf(context).height,
            width: width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: 4.0.radiusAll,
            ),
            offset: offset ??
                (width == null
                    ? const Offset(-Gaps.large, 0)
                    : Offset(-width! + Gaps.largest, 0)),
          ),
          menuItemStyleData:
              const MenuItemStyleData(height: 56, padding: EdgeInsets.zero),
          selectedItemBuilder: (context) => items
              .map((e) => Center(
                    child: Row(
                      children: [
                        Text(
                          e.toString().toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Theme.of(context).colorScheme.primary,
                          size: 20,
                        ),
                      ],
                    ),
                  ))
              .toList(),
          items: items
              .map((e) => DropdownMenuItem(
                  value: e,
                  enabled: e != selectedItem,
                  child: Text(
                    T == Locale ? (e as Locale).toValue() : e.toString(),
                    style: TextStyle(
                        color: e == selectedItem
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurface),
                  )))
              .toList()),
    );
  }
}
