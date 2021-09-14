import 'package:ninja/ninja.dart';
import 'package:ninja_ed25519/ninja_ed25519.dart';
import 'package:bech32/bech32.dart';
import 'package:ninja_basex/ninja_basex.dart';

void main() {
  final keyStr = 'addr_xsk134g8ynwjnmavshw0877wt6kh7gfssvau9gsvd2n2ewtz9jl6wvp27l76pk75lu4pm3zenyaf7ammpy69e3tfmvme2mle9kl44rrpyr04sgzeuwjmzqkqzwn9h7x0nzz36rwzs70yn62sd9dyexvns0f4dql4fzt7';
  final key = PrivateKey.fromBech32(keyStr);
  print(key.keyAsHex);
  print(key.prefix.toHex());
  print(key.publicKey.asHex);

  final seed = PrivateKey.fromHex(
      '8d50724dd29efac85dcf3fbce5ead7f2130833bc2a20c6aa6acb9622cbfa7302af7fda0dbd4ff2a1dc459993a9f777b09345cc569db37956ff92dbf5a8c6120d');
  print(seed.keyAsHex);
  print(seed.prefix.toHex());
  print(seed.publicKey.asHex);
  // TODO
}
