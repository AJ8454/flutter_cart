import 'package:flutter/material.dart';

abstract class BlocBase {
  void dispose();
}

// Generic BloC Provider
class BlocProvider<T extends BlocBase> extends StatefulWidget {
  final T bloc;
  final Widget child;
  const BlocProvider({
    Key? key,
    required this.child,
    required this.bloc,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BlocProviderState<T>();

  static T of<T extends BlocBase>(BuildContext context) {
    // final type = _typeof<BlocProvider<T>>();
    BlocProvider<T> provider =
        context.dependOnInheritedWidgetOfExactType() as BlocProvider<T>;
    return provider.bloc;
  }

  // static Type _typeof<T>() => T;
}

class _BlocProviderState<T> extends State<BlocProvider<BlocBase>> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
