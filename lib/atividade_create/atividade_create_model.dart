import '/flutter_flow/flutter_flow_util.dart';
import 'atividade_create_widget.dart' show AtividadeCreateWidget;
import 'package:flutter/material.dart';

class AtividadeCreateModel extends FlutterFlowModel<AtividadeCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
