import '/flutter_flow/flutter_flow_util.dart';
import 'cartold_widget.dart' show CartoldWidget;
import 'package:flutter/material.dart';

class CartoldModel extends FlutterFlowModel<CartoldWidget> {
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
