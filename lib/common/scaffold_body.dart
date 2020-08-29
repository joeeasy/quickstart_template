import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffordBody extends StatelessWidget {
  const ScaffordBody({Key key, this.child, this.hasBackground = true})
      : super(key: key);
  final Widget child;
  final bool hasBackground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
        SystemChannels.textInput.invokeMethod<void>('TextInput.hide');
      },
      child: Container(
        decoration: hasBackground
            ? BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff242428),
                    Color(0xff15161C),
                  ],
                ),
              )
            : BoxDecoration(),
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 50,
        ),
        child: child,
      ),
    );
  }
}
