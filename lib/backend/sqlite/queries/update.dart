import 'package:sqflite/sqflite.dart';

/// BEGIN ADDMEDICAO
Future performAddmedicao(
  Database database, {
  String? cliente,
  String? enderecoobra,
  String? responsavel,
  String? material,
  DateTime? dataprevisao,
  String? observacoes,
}) {
  final query = '''
INSERT INTO medicao(cliente, end_obra, res_obra, material, data_previsao, observacoes) VALUES ('$cliente', '$enderecoobra', '$responsavel', '$material', $dataprevisao, '$observacoes')
''';
  return database.rawQuery(query);
}

/// END ADDMEDICAO

/// BEGIN ATUALIZARMEDICAO
Future performAtualizarmedicao(
  Database database, {
  int? id,
  String? enderecoobra,
  String? responsavelobra,
  String? material,
  DateTime? dataprevisao,
  String? observacoes,
  String? cliente,
}) {
  final query = '''
UPDATE medicao
SET
  cliente = '$cliente',
  end_obra = "$enderecoobra",
  res_obra = '$responsavelobra'
  material = '$material'
  data_previsao = '$dataprevisao',
  observacoes = '$observacoes'
  
  WHERE id =  $id
''';
  return database.rawQuery(query);
}

/// END ATUALIZARMEDICAO

/// BEGIN DELETAR MEDICAO
Future performDeletarMedicao(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM medicao WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END DELETAR MEDICAO
