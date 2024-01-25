

import 'package:adv_ks_binu_assosciates/core/usecase/usecase.dart';
import 'package:adv_ks_binu_assosciates/features/video_management/domain/entity/video_entity.dart';
import 'package:adv_ks_binu_assosciates/features/video_management/domain/repository/video_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

class CreateVideoUseCase extends UseCase<Unit, VideoEntity> {
  final VideoRepository repo;

  CreateVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, Unit>> call(VideoEntity params) async {
    return await repo.create(params);
  }
}
