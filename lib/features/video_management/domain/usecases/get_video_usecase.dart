import 'package:adv_ks_binu_assosciates/features/video_management/domain/entity/video_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/video_repository.dart';


class GetVideoUseCase extends UseCase<List<VideoEntity>, NoParams> {
  final VideoRepository repo;

  GetVideoUseCase({
    required this.repo,
  });
  @override
  Future<Either<Failure, List<VideoEntity>>> call(NoParams params) async {
    return await repo.getAllVideos();
  }
}
