import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("atomic.wax.eosrio.io");
final api = atom.newTemplatesApi();

void main(List<String> args) async {
  await getTemplates();
  await getTemplateId();
  await getTemplateIdStats();
  await getTemplateIdLogs();
}

Future<void> getTemplates() async {
  print("========== getTemplates()");

  final templates =
      await api.getTemplates(collectionName: "cryptopuppie", limit: 1);
  for (var el in templates) {
    print(el["immutable_data"]["name"]);
  }
}

Future<void> getTemplateId() async {
  print("========== getTemplateId()");

  final template = await api.getTemplateId(
      collectionName: "cryptopuppie", templateId: 652499);
  print(template);
}

Future<void> getTemplateIdStats() async {
  print("========== getTemplateIdStats()");

  final stats = await api.getTemplateIdStats(
      collectionName: "cryptopuppie", templateId: 652499);
  print(stats);
}

Future<void> getTemplateIdLogs() async {
  print("========== getTemplateIdLogs()");

  final logs = await api.getTemplateIdLogs(
      collectionName: "cryptopuppie", templateId: 652499, limit: 1);
  print(logs);
}
