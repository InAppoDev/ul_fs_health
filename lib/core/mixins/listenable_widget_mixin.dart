import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin ListenableWidgetMixin<B extends StateStreamable<S>, S>  {
  bool isError(S state);
  bool isSuccess(S state);
  void onReset(BuildContext context, S state) {}
  void onError(BuildContext context, S state) {}
  void onSuccess(BuildContext context, S state) {}
  void listener(BuildContext context, S state) {}

  Widget withBlocListener({
    required Widget child,
    bool isReset = true,
    B? bloc,
  }) {
    return BlocListener<B, S>(
      bloc: bloc,
      listener: (context, state) {
        if (isError(state)) {
          onError(context, state);
          if (isReset) {
            onReset(context, state);
          }
        }
        else if (isSuccess(state)) {
          onSuccess(context, state);
          if (isReset) {
            onReset(context, state);
          }
        }
        listener(context, state);
      },
      child: child,
    );
  }
}
