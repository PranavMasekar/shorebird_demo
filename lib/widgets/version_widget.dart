import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shorebird_demo/providers/version_provider.dart';

class VersionWidget extends ConsumerWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(versionProvider);

    return version.when(
      data: (version) => Text(version),
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => Text(error.toString()),
    );
  }
}
