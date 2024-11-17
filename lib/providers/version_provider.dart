import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_demo/providers/shorebird_provider.dart';

final versionProvider = FutureProvider<String>((ref) async {
  final codePush = ref.watch(shorebirdProvider);

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  final patchNumber = (await codePush.currentPatchNumber()) ?? 0;

  return '${packageInfo.version} + ${packageInfo.buildNumber} # $patchNumber';
});
