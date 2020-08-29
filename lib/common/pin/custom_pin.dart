import 'package:flutter/material.dart';

class PinInputField extends StatelessWidget {
  const PinInputField({
    Key key,
    this.onCodeChanged,
    this.boxLength = 4,
    this.obscureText,
    this.autoFocus = false,
  }) : super(key: key);

  final Function onCodeChanged;
  final int boxLength;
  final bool obscureText;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List<Widget>.generate(
        boxLength,
        (int index) => _PinInput(
          index: index,
          handleOnchange: onCodeChanged,
          obscureText: obscureText,
          autoFocus: autoFocus,
          focusNode: FocusNode(),
        ),
      ),
    );
  }
}

class _PinInput extends StatefulWidget {
  const _PinInput({
    Key key,
    this.handleOnchange,
    this.index,
    this.obscureText = false,
    this.autoFocus = false,
    this.focusNode,
  }) : super(key: key);

  final Function handleOnchange;
  final int index;
  final bool obscureText;
  final bool autoFocus;
  final FocusNode focusNode;

  @override
  __PinInputState createState() => __PinInputState();
}

class __PinInputState extends State<_PinInput> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle style = theme.inputDecorationTheme.helperStyle;
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
    try {
      return Container(
        height: 50,
        width: 50,
        child: Center(
          child: TextFormField(
            autofocus: widget.autoFocus,
            keyboardType: const TextInputType.numberWithOptions(),
            obscureText: widget.obscureText,
            focusNode: widget.focusNode,
            onChanged: (String value) {
              if (value.isNotEmpty) {
                debugPrint('I am getting here ${widget.index}');
                widget.handleOnchange(value.trim());
                FocusScope.of(context).nextFocus();
              } else {
                if (widget.index != 0 || widget.index > 5) {
                  FocusScope.of(context).previousFocus();
                }
              }
            },
            cursorColor: Color(0xffCFD0DA).withOpacity(0.52),
            decoration: InputDecoration(
              fillColor: Color(0xff343639).withOpacity(0.78),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xffCFD0DA).withOpacity(0.52),
                      style: BorderStyle.solid),
                  borderRadius: borderRadius),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff343639).withOpacity(0.78),
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: borderRadius,
              ),
            ),
            style: theme.textTheme.bodyText2.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Color(0xffCFD0DA).withOpacity(0.52)),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
  }
}
