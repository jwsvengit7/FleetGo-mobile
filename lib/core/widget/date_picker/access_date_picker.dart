import 'dart:io';


import 'package:fleetride/core/colors/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AccessDatePickerButton extends StatefulWidget {
  final String hintText;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final bool readOnly;
  final bool showIcon;
  final void Function(DateTime?) onDateSelected;

  const AccessDatePickerButton({
    super.key,
    this.hintText = 'Select a Date',
    required this.onDateSelected,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    this.readOnly = false,
    this.showIcon = true,
  });

  @override
  _AccessDatePickerButtonState createState() => _AccessDatePickerButtonState();
}

class _AccessDatePickerButtonState extends State<AccessDatePickerButton> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _selectDate(BuildContext context) async {
    final isIOS = Platform.isIOS;
    final initialDate = widget.initialDate;
    final firstDate = widget.firstDate;
    final lastDate = widget.lastDate;

    if (isIOS) {
      final selectedDate = await showCupertinoModalPopup<DateTime>(
        context: context,
        builder: (context) => Container(
          height: 300,
          color: FleetrideColors.white,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: initialDate,
            minimumDate: firstDate,
            maximumDate: lastDate,
            onDateTimeChanged: (selectedDate) {
              setState(() {
                _selectedDate = selectedDate;
              });
            },
          ),
        ),
      );
      if (selectedDate != null) {
        widget.onDateSelected(selectedDate);
      }
    } else {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate ?? widget.initialDate,
        firstDate: widget.firstDate,
        lastDate: widget.lastDate,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              colorScheme: const ColorScheme.light(
                primary: FleetrideColors
                    .blue1, // sets the primary color of the date picker
                onPrimary: Colors
                    .white, // sets the text color for buttons and selected date
              ),
              textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(
                    FleetrideColors.blue1,
                  ), // sets the button text color
                ),
              ),
            ),
            child: child!,
          );
        },
      );
      if (picked != null && picked != _selectedDate) {
        setState(() {
          _selectedDate = picked;
        });
        widget.onDateSelected(_selectedDate);
      }
    }
  }

  String _formatDate(DateTime date) {
    final formatter = DateFormat.yMMMd();
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all<Color>(
          FleetrideColors.grey1.withOpacity(
            0.2,
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: 45.w,
            vertical: 25.h,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(
              color: FleetrideColors.grey1,
            ),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          FleetrideColors.white,
        ),
      ),
      onPressed: () => widget.readOnly ? null : _selectDate(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _selectedDate != null
                ? _formatDate(_selectedDate!)
                : widget.hintText,
            style: TextStyle(
              color: _selectedDate == null
                  ? FleetrideColors.grey2
                  : FleetrideColors.black1,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          widget.showIcon
              ? WebsafeSvg.asset("calender")
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
