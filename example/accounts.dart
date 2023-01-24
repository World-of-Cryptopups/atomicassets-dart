import 'package:atomicassets_dart/src/base.dart';

final atom = AtomicAssets("atomic.wax.eosrio.io");
final api = atom.newAccountsApi();

void main(List<String> args) async {
  await getAccounts();
  await getAccount();
  await getAccountCollectionName();
}

Future<void> getAccounts() async {
  print("========== getAccounts()");

  final accounts = await api.getAccounts(
      matchOwner: "5g2vm.wam", collectionName: "cryptopuppie");
  for (var el in accounts) {
    print("${el['account']} : ${el['assets']}");
  }
}

Future<void> getAccount() async {
  print("========== getAccount()");

  final account = await api.getAccount(account: "5g2vm.wam");
  print(account);
}

Future<void> getAccountCollectionName() async {
  print("========== getAccountCollectionName()");

  final account = await api.getAccountCollectionName(
      account: "5g2vm.wam", collectionName: "cryptopuppie");
  print(account);
}
