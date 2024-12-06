import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'novamedicao_model.dart';
export 'novamedicao_model.dart';

class NovamedicaoWidget extends StatefulWidget {
  const NovamedicaoWidget({super.key});

  @override
  State<NovamedicaoWidget> createState() => _NovamedicaoWidgetState();
}

class _NovamedicaoWidgetState extends State<NovamedicaoWidget> {
  late NovamedicaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovamedicaoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.menuModel,
                updateCallback: () => safeSetState(() {}),
                child: const MenuWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
