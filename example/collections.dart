import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("wax.api.atomicassets.io");
final api = atom.newCollectionsApi();

void main(List<String> args) async {
  await getCollections();
  await getCollectionName();
  await getCollectionNameStats();
  await getCollectionNameLogs();
}

Future<void> getCollections() async {
  print("========== getCollections()");

  final cols = await api.getCollections(author: "v.dr4.wam");
  for (var el in cols) {
    print(el["collection_name"]);
  }
}

Future<void> getCollectionName() async {
  print("========== getCollectionName()");

  final col = await api.getCollectionName("cryptopuppie");
  print(col);
}

Future<void> getCollectionNameStats() async {
  print("========== getCollectionNameStats()");

  final stats = await api.getCollectionNameStats("cryptopuppie");
  print(stats);
}

Future<void> getCollectionNameLogs() async {
  print("========== getCollectionNameLogs()");

  final logs = await api.getCollectionNameLogs("cryptopuppie", limit: 1);
  print(logs);
}
