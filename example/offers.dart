import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("atomic.wax.eosrio.io");
final api = atom.newOffersApi();

void main(List<String> args) async {
  await getOffers();
}

Future<void> getOffers() async {
  print("========== getOffers()");

  final schemas = await api.getOffers(account: "v.dr4.wam", limit: 1);
  for (var el in schemas) {
    print(el["offer_id"]);
  }
}
