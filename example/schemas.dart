import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("atomic.wax.eosrio.io");
final api = atom.newSchemasApi();

void main(List<String> args) async {
  await getSchemas();
  await getSchemaName();
  await getSchemaNameStats();
  await getSchemaNameLogs();
}

Future<void> getSchemas() async {
  print("========== getSchemas()");

  final schemas = await api.getSchemas(collectionName: "cryptopuppie");
  for (var el in schemas) {
    print(el["schema_name"]);
  }
}

Future<void> getSchemaName() async {
  print("========== getSchemaName()");

  final schema = await api.getSchemaName(
      collectionName: "cryptopuppie", schemaName: "puppycards");
  print(schema);
}

Future<void> getSchemaNameStats() async {
  print("========== getSchemaNameStats()");

  final stats = await api.getSchemaNameStats(
      collectionName: "cryptopuppie", schemaName: "puppycards");
  print(stats);
}

Future<void> getSchemaNameLogs() async {
  print("========== getSchemaNameLogs()");

  final logs = await api.getSchemaNameLogs(
      collectionName: "cryptopuppie", schemaName: "puppycards", limit: 1);
  print(logs);
}
