// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  LoginDao _loginDaoInstance;

  HorarioDao _horarioDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Login` (`token` TEXT, PRIMARY KEY (`token`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Horario` (`id` TEXT, `tipoEspacio` TEXT, `asignatura` TEXT, `numSemana` TEXT, `nombreProfesor` TEXT, `grupo` TEXT, `idioma` TEXT, `horaInicio` INTEGER, `horaFin` INTEGER, `fecha` TEXT, `nombreDia` TEXT, `nombreMes` TEXT, `horaInicioFin` TEXT, `salon` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  LoginDao get loginDao {
    return _loginDaoInstance ??= _$LoginDao(database, changeListener);
  }

  @override
  HorarioDao get horarioDao {
    return _horarioDaoInstance ??= _$HorarioDao(database, changeListener);
  }
}

class _$LoginDao extends LoginDao {
  _$LoginDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _loginInsertionAdapter = InsertionAdapter(database, 'Login',
            (Login item) => <String, dynamic>{'token': item.token}),
        _loginUpdateAdapter = UpdateAdapter(database, 'Login', ['token'],
            (Login item) => <String, dynamic>{'token': item.token}),
        _loginDeletionAdapter = DeletionAdapter(database, 'Login', ['token'],
            (Login item) => <String, dynamic>{'token': item.token});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Login> _loginInsertionAdapter;

  final UpdateAdapter<Login> _loginUpdateAdapter;

  final DeletionAdapter<Login> _loginDeletionAdapter;

  @override
  Future<Login> getLogin() async {
    return _queryAdapter.query('SELECT * FROM Login',
        mapper: (Map<String, dynamic> row) => Login(row['token'] as String));
  }

  @override
  Future<int> insertItem(Login varT) {
    return _loginInsertionAdapter.insertAndReturnId(
        varT, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertItems(List<Login> varT) {
    return _loginInsertionAdapter.insertListAndReturnIds(
        varT, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateItem(Login varT) async {
    await _loginUpdateAdapter.update(varT, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteItem(Login varT) async {
    await _loginDeletionAdapter.delete(varT);
  }

  @override
  Future<void> deleteItems(List<Login> varT) async {
    await _loginDeletionAdapter.deleteList(varT);
  }
}

class _$HorarioDao extends HorarioDao {
  _$HorarioDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _horarioInsertionAdapter = InsertionAdapter(
            database,
            'Horario',
            (Horario item) => <String, dynamic>{
                  'id': item.id,
                  'tipoEspacio': item.tipoEspacio,
                  'asignatura': item.asignatura,
                  'numSemana': item.numSemana,
                  'nombreProfesor': item.nombreProfesor,
                  'grupo': item.grupo,
                  'idioma': item.idioma,
                  'horaInicio': _dateTimeConverter.encode(item.horaInicio),
                  'horaFin': _dateTimeConverter.encode(item.horaFin),
                  'fecha': item.fecha,
                  'nombreDia': item.nombreDia,
                  'nombreMes': item.nombreMes,
                  'horaInicioFin': item.horaInicioFin,
                  'salon': item.salon
                }),
        _horarioUpdateAdapter = UpdateAdapter(
            database,
            'Horario',
            ['id'],
            (Horario item) => <String, dynamic>{
                  'id': item.id,
                  'tipoEspacio': item.tipoEspacio,
                  'asignatura': item.asignatura,
                  'numSemana': item.numSemana,
                  'nombreProfesor': item.nombreProfesor,
                  'grupo': item.grupo,
                  'idioma': item.idioma,
                  'horaInicio': _dateTimeConverter.encode(item.horaInicio),
                  'horaFin': _dateTimeConverter.encode(item.horaFin),
                  'fecha': item.fecha,
                  'nombreDia': item.nombreDia,
                  'nombreMes': item.nombreMes,
                  'horaInicioFin': item.horaInicioFin,
                  'salon': item.salon
                }),
        _horarioDeletionAdapter = DeletionAdapter(
            database,
            'Horario',
            ['id'],
            (Horario item) => <String, dynamic>{
                  'id': item.id,
                  'tipoEspacio': item.tipoEspacio,
                  'asignatura': item.asignatura,
                  'numSemana': item.numSemana,
                  'nombreProfesor': item.nombreProfesor,
                  'grupo': item.grupo,
                  'idioma': item.idioma,
                  'horaInicio': _dateTimeConverter.encode(item.horaInicio),
                  'horaFin': _dateTimeConverter.encode(item.horaFin),
                  'fecha': item.fecha,
                  'nombreDia': item.nombreDia,
                  'nombreMes': item.nombreMes,
                  'horaInicioFin': item.horaInicioFin,
                  'salon': item.salon
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Horario> _horarioInsertionAdapter;

  final UpdateAdapter<Horario> _horarioUpdateAdapter;

  final DeletionAdapter<Horario> _horarioDeletionAdapter;

  @override
  Future<List<Horario>> getHorarioDay(
      String day, String month, String year) async {
    return _queryAdapter.queryList(
        'SELECT * FROM Horario WHERE strftime("%d", horaInicio, "unixepoch") = ? AND strftime("%m", horaInicio, "unixepoch") = ? AND strftime("%y", horaInicio, "unixepoch") = ?',
        arguments: <dynamic>[day, month, year],
        mapper: (Map<String, dynamic> row) => Horario(
            tipoEspacio: row['tipoEspacio'] as String,
            asignatura: row['asignatura'] as String,
            numSemana: row['numSemana'] as String,
            nombreProfesor: row['nombreProfesor'] as String,
            grupo: row['grupo'] as String,
            idioma: row['idioma'] as String,
            horaInicio: _dateTimeConverter.decode(row['horaInicio'] as int),
            horaFin: _dateTimeConverter.decode(row['horaFin'] as int),
            fecha: row['fecha'] as String,
            nombreDia: row['nombreDia'] as String,
            nombreMes: row['nombreMes'] as String,
            horaInicioFin: row['horaInicioFin'] as String,
            id: row['id'] as String,
            salon: row['salon'] as String));
  }

  @override
  Future<List<Horario>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM Horario',
        mapper: (Map<String, dynamic> row) => Horario(
            tipoEspacio: row['tipoEspacio'] as String,
            asignatura: row['asignatura'] as String,
            numSemana: row['numSemana'] as String,
            nombreProfesor: row['nombreProfesor'] as String,
            grupo: row['grupo'] as String,
            idioma: row['idioma'] as String,
            horaInicio: _dateTimeConverter.decode(row['horaInicio'] as int),
            horaFin: _dateTimeConverter.decode(row['horaFin'] as int),
            fecha: row['fecha'] as String,
            nombreDia: row['nombreDia'] as String,
            nombreMes: row['nombreMes'] as String,
            horaInicioFin: row['horaInicioFin'] as String,
            id: row['id'] as String,
            salon: row['salon'] as String));
  }

  @override
  Future<int> insertItem(Horario varT) {
    return _horarioInsertionAdapter.insertAndReturnId(
        varT, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertItems(List<Horario> varT) {
    return _horarioInsertionAdapter.insertListAndReturnIds(
        varT, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateItem(Horario varT) async {
    await _horarioUpdateAdapter.update(varT, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteItem(Horario varT) async {
    await _horarioDeletionAdapter.delete(varT);
  }

  @override
  Future<void> deleteItems(List<Horario> varT) async {
    await _horarioDeletionAdapter.deleteList(varT);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
