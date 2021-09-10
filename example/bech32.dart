import 'package:ninja/ninja.dart';
import 'package:ninja_ed25519/ninja_ed25519.dart';

void main() {
  final seed = RFC8032Seed.fromHex(
      '8d50724dd29efac85dcf3fbce5ead7f2130833bc2a20c6aa6acb9622cbfa7302af7fda0dbd4ff2a1dc459993a9f777b09345cc569db37956ff92dbf5a8c6120d');
  print(seed.privateKey.keyAsHex);
  print(seed.publicKey.asHex);
  print(seed.prefix.toHex());
  // TODO
}
