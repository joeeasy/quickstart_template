import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  const CustomInput(
      {Key key,
      this.obscureText = false,
      this.controller,
      this.keyboardType,
      this.focusNode,
      this.labelText,
      this.error = false,
      this.hintText})
      : super(key: key);
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final String labelText;
  final bool error;
  final String hintText;

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool obscureTextMutable;

  @override
  void initState() {
    obscureTextMutable = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return TextFormField(
      obscureText: obscureTextMutable,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        suffixIcon: _getSuffixIcon(theme),
        labelStyle: theme.bodyText2.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Color(0xffCFD0DA).withOpacity(0.52)),
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperStyle: theme.bodyText2.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Color(0xffCFD0DA).withOpacity(0.52)),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Color(0xff343639).withOpacity(0.78),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(0xff343639).withOpacity(0.78))),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
                color: !widget.error
                    ? Color(0xff343639).withOpacity(0.78)
                    : AppColor.danger)),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
                color: !widget.error
                    ? Color(0xffCFD0DA).withOpacity(0.52)
                    : AppColor.danger)),
        contentPadding: const EdgeInsets.all(16),
      ),
      style: theme.bodyText2.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Color(0xffCFD0DA).withOpacity(0.52)),
    );
  }

  Widget _getSuffixIcon(TextTheme theme) {
    final suffixText = obscureTextMutable ? 'Show' : 'Hide';
    if (widget.obscureText) {
      return GestureDetector(
        onTap: () {
          setState(() {
            obscureTextMutable = !obscureTextMutable;
          });
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              suffixText,
              style: theme.bodyText1
                  .copyWith(fontSize: 10, fontWeight: FontWeight.w500),
            )),
      );
    }
  }
}
