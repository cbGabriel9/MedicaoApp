import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'novamedicao_widget.dart' show NovamedicaoWidget;
import 'package:flutter/material.dart';

class NovamedicaoModel extends FlutterFlowModel<NovamedicaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
