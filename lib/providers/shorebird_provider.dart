import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

final shorebirdProvider = Provider<ShorebirdCodePush>((ref) {
  return ShorebirdCodePush();
});
