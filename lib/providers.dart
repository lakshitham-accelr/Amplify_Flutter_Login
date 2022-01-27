import 'package:riverpod/riverpod.dart';
import 'package:aws_flutter_app/aws_auth.dart';

/// User from Aws Authentication
final authUserProvider = FutureProvider<String?>((ref) {
  final authAWSRepo = ref.watch(authAWSRepositoryProvider);
  return authAWSRepo.user.then((value) => value);
});