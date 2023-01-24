# atomicassets-dart

AtomicAssets API wrapper for Dart.

## Usage

More examples on how to use in the [examples](./example/)

```dart
final atom = AtomicAssets("wax.api.atomicassets.io");
final api = atom.newAssetsApi();


final myAssets = await api.getAssets(
      collectionName: "cryptopuppie", limit: 10, owner: "5g2vm.wam");

for (var el in myAssets) {
    print(el["data"]["name"]);
}
```

## Implemented api paths

- `assets`
- `collections`
- `schemas`
- `templates`
- `accounts`
- `transfers`
- `offers`

##

**tbdsux | 2023**
