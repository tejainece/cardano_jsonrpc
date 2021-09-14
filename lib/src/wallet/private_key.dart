import 'package:ninja_ed25519/ninja_ed25519.dart';

class AdaPrivateKey {
  final PrivateKey key;

  AdaPrivateKey(this.key);

  factory AdaPrivateKey.fromBech32(String key) {
    return AdaPrivateKey(PrivateKey.fromBech32(key));
  }

  AdaPublicKey get public => AdaPublicKey(key.publicKey);

  String toBech32({String prefix = ''}) {
    // TODO
    throw UnimplementedError();
  }
}

class AdaPublicKey {
  final PublicKey key;

  AdaPublicKey(this.key);

  factory AdaPublicKey.fromBech32(String key) {
    // TODO return AdaPublicKey(PublicKey.fromBech32(key));
    throw UnimplementedError();
  }

  String toBech32({String prefix = ''}) {
    // TODO
    throw UnimplementedError();
  }

  String toAddress() {
    // TODO
    throw UnimplementedError();
  }
}