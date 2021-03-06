import 'dart:typed_data';
import 'package:ninja/ninja.dart';

import 'package:bs58check/bs58check.dart';
import 'package:ninja_ed25519/ninja_ed25519.dart';
import 'package:cbor/cbor.dart';
import 'package:typed_data/typed_buffers.dart';

void main() {
  /*
  final seed = RFC8032Seed.fromHexSeed('b0bf46232c7f0f58ad333030e43ffbea7c2bb6f8135bd05fb0d343ade8453c5eacc7ac09f77e16b635832522107eaa9f56db88c615f537aa6025e6c23da98ae8');
  PrivateKey;
  print(seed.keyAsHex);
  print(seed.publicKey.asHex);
   */

  final bytes = base58.decode('Ae2tdPwUPEZDQzUQxPTD77cyJafnDNxEXtRrEAcLcbEw15NBpDvFRviBWWh');
  print(bytes);
  print(bytes.length);
  final cbor = Cbor();
  cbor.decodeFromList(bytes);
  final data = cbor.getDecodedData()!;
  final List<int> list = data[0][0];
  print(list.length);
  print(list.map((e) => e.hexByte).toList());

}
