import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'medicaosqlite',
      'sqlite.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ListarmedicoesRow>> listarmedicoes() => performListarmedicoes(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addmedicao({
    String? cliente,
    String? enderecoobra,
    String? responsavel,
    String? material,
    DateTime? dataprevisao,
    String? observacoes,
  }) =>
      performAddmedicao(
        _database,
        cliente: cliente,
        enderecoobra: enderecoobra,
        responsavel: responsavel,
        material: material,
        dataprevisao: dataprevisao,
        observacoes: observacoes,
      );

  Future atualizarmedicao({
    int? id,
    String? enderecoobra,
    String? responsavelobra,
    String? material,
    DateTime? dataprevisao,
    String? observacoes,
    String? cliente,
  }) =>
      performAtualizarmedicao(
        _database,
        id: id,
        enderecoobra: enderecoobra,
        responsavelobra: responsavelobra,
        material: material,
        dataprevisao: dataprevisao,
        observacoes: observacoes,
        cliente: cliente,
      );

  Future deletarMedicao({
    int? id,
  }) =>
      performDeletarMedicao(
        _database,
        id: id,
      );

  /// END UPDATE QUERY CALLS
}
