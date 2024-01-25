

import 'package:adv_ks_binu_assosciates/core/errors/failures.dart';
import 'package:adv_ks_binu_assosciates/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

import '../repository/video_repository.dart';

class DeleteVideoUseCase extends UseCase<Unit, String> {
  final VideoRepository repo;

  DeleteVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, Unit>> call(String params) async {
    return await repo.deleteVideo(params);
  }
}
