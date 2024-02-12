import '../../../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetCampaignUseCase extends BaseUseCase<void, List<ICampaignEntity>> {
  GetCampaignUseCase({required ICartRepository repository}) : _repository = repository;

  final ICartRepository _repository;

  @override
  Future<List<ICampaignEntity>> call(void params) {
    final response = _repository.getCampaigns();
    return response;
  }
}
