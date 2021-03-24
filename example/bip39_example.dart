import 'package:bip39_words/bip39.dart' as bip39;
import 'package:bip39_words/src/wordlists/chinese_simplified.dart';

main() async {
  String randomMnemonic = bip39.generateMnemonic(CHINESE_SIMOLIFIED_LIST);
  print(randomMnemonic);
  String seed = bip39.mnemonicToSeedHex("党 加 针 建 腐 灯 仇 宜 卫 壳 卖 彻");
  print(seed);
  String mnemonic = bip39.entropyToMnemonic('00000000000000000000000000000000',CHINESE_SIMOLIFIED_LIST);
  print(mnemonic);
  bool isValid = bip39.validateMnemonic(mnemonic,CHINESE_SIMOLIFIED_LIST);
  print(isValid);
  isValid = bip39.validateMnemonic('basket actual',CHINESE_SIMOLIFIED_LIST);
  print(isValid);
  String entropy = bip39.mnemonicToEntropy(mnemonic,CHINESE_SIMOLIFIED_LIST);
  print(entropy);
}
