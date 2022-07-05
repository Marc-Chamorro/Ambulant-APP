import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';

class PswFormFieldRequest extends StatefulWidget {
  final String hint;
  final String labelText;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function onChanged;

  PswFormFieldRequest({
    required this.hint,
    required this.controller,
    required this.onChanged,
    required this.labelText,
    this.inputType = TextInputType.text,
  });

  _PswFormFieldRequest createState() => _PswFormFieldRequest();
}

class _PswFormFieldRequest extends State<PswFormFieldRequest> {

  late bool passwordVisibility = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ConstantColors.cursorClear,
      controller: widget.controller,
      obscureText: !passwordVisibility,
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
        suffixIcon: InkWell(
          onTap: () => setState(
                () => passwordVisibility = !passwordVisibility,
          ),
          child: Icon(
            passwordVisibility
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: const Color(0x98FFFFFF),
            size: 20,
          ),
        ),
      ),
      style: ConstantTextStyles.labelClearStyle,
      onChanged: (text) {
        if (widget.onChanged != null) {
          widget.onChanged(text);
        }
      },
    );
  }
}
