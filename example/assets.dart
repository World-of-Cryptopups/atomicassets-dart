import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("wax.api.atomicassets.io");
final api = atom.newAssetsApi();

void main(List<String> args) async {
  await getAssets();
  await getAssetId();
}

Future<void> getAssets() async {
  print("========== getAssets()");

  final myAssets = await api.getAssets(
      collectionName: "cryptopuppie", limit: 10, owner: "5g2vm.wam");

  for (var el in myAssets) {
    print(el["data"]["name"]);
  }
}

Future<void> getAssetId() async {
  print("========== getAssetID()");

  final asset = await api.getAssetId("1099585323715");
  print(asset);
}
