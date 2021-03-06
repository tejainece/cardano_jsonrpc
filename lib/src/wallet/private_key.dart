import 'dart:typed_data';

import 'package:bech32/bech32.dart';
import 'package:ninja_basex/ninja_basex.dart';
import 'package:ninja_ed25519/ninja_ed25519.dart';

class AdaPrivateKey {
  final PrivateKey key;

  AdaPrivateKey(this.key);

  factory AdaPrivateKey.fromBech32(String key) {
    return AdaPrivateKey(PrivateKey.fromBech32(key));
  }

  AdaPublicKey get public => AdaPublicKey(key.publicKey);

  String toBech32({String hrp = 'acct_sk'}) => key.toBech32(hrp);
}

class AdaPublicKey {
  final PublicKey key;

  AdaPublicKey(this.key);

  factory AdaPublicKey.fromBech32(String key) {
    final bechData = bech32.decode(key, 110);
    var data = fromBaseBytes(bechData.data, 32);
    print(data);
    return AdaPublicKey(PublicKey(Uint8List.fromList(data)));
  }

  String toBech32({String hrp = 'addr'}) => key.toBech32(hrp);

  String toAddress({String hrp = 'addr'}) => toBech32(hrp: hrp);
}
