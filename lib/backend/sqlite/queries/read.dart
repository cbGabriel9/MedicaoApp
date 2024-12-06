import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LISTARMEDICOES
Future<List<ListarmedicoesRow>> performListarmedicoes(
  Database database,
) {
  const query = '''
SELECT * FROM medicao
''';
  return _readQuery(database, query, (d) => ListarmedicoesRow(d));
}

class ListarmedicoesRow extends SqliteRow {
  ListarmedicoesRow(super.data);

  int get id => data['id'] as int;
  String get cliente => data['cliente'] as String;
  String get endObra => data['end_obra'] as String;
  String get resObra => data['res_obra'] as String;
  String get material => data['material'] as String;
  DateTime get dataPrevisao => data['data_previsao'] as DateTime;
  String? get observacoes => data['observacoes'] as String?;
}

/// END LISTARMEDICOES
