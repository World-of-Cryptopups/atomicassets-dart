import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("atomic.wax.eosrio.io");
final api = atom.newTransfersApi();

void main(List<String> args) async {
  await getTransfers();
}

Future<void> getTransfers() async {
  print("========== getTransfers()");

  final schemas = await api.getTransfers(account: "5g2vm.wam", limit: 1);
  for (var el in schemas) {
    print(el["transfer_id"]);
  }
}
