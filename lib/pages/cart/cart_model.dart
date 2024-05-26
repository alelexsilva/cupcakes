import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks.
  Future aaaaa(BuildContext context) async {
    if (FFAppState().appCart.isEmpty) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: const Text('vazio'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: const Text('vazio'),
              ),
            ],
          );
        },
      );

      context.pushNamed('home_cupcakelist');
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(FFAppState().appCart.length.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text(FFAppState().appCart.length.toString()),
              ),
            ],
          );
        },
      );
    }
  }
}
