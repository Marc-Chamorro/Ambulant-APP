import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';

class TextFormFieldRequest extends StatefulWidget {
  final String hint;
  final String labelText;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function onChanged;

  // final Color cursorColor;

  TextFormFieldRequest({
    required this.hint,
    required this.controller,
    required this.onChanged,
    required this.labelText,
    // required this.cursorColor,
    this.inputType = TextInputType.text,
    //required this.validator
  });

  _TextFormFieldRequest createState() => _TextFormFieldRequest();
}

class _TextFormFieldRequest extends State<TextFormFieldRequest> {
  @override
  void initState() {
    super.initState();
    // currentColor = widget.borderColor;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ConstantColors.cursorClear,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        //alignLabelWithHint: true,
        labelStyle: ConstantTextStyles.labelGreyHeightStyle,
        hintText: widget.hint,
        hintStyle: ConstantTextStyles.labelGreyStyle,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConstantColors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConstantColors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: ConstantColors.filldark,
        contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
      ),
      style: ConstantTextStyles.labelClearStyle,
      onChanged: (text) {
        if (widget.onChanged != null) {
          widget.onChanged(text);
        }
        // setState(() {
        //   if (!widget.validator(text) || text.length == 0) {
        //     currentColor = widget.errorColor;
        //   } else {
        //     currentColor = widget.baseColor;
        //   }
        // });
      },
    );
  }
}
