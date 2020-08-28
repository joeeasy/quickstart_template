import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView(
      {this.builder,
      this.onModelReady,
      this.onDispose,
      this.onModelUpdate,
      this.onModelDidChange});

  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;
  final Function(T) onDispose;
  final Function(T) onModelUpdate;
  final Function(T) onModelDidChange;

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T model = Get.find<T>();

  @override
  void didUpdateWidget(BaseView<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.onModelUpdate != null) {
      widget.onModelReady(model);
    }
  }

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (widget.onModelDidChange != null) {
      widget.onModelDidChange(model);
    }
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<T>.value(
        value: model,
        child: Consumer<T>(builder: widget.builder),
      );
}
