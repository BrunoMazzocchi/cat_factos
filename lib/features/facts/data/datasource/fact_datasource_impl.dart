import 'package:catfact/configs/api/api_client.dart';
import 'package:catfact/features/facts/data/models/cat_fact_model.dart';
import 'package:catfact/features/facts/domain/datasource/fact_datasource.dart';
import 'package:catfact/features/facts/domain/enitties/cat_fact_entity.dart';

class FactDatasourceImpl implements FactDatasource {
  final ApiClient _apiClient; 
  
  const FactDatasourceImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<CatFactEntity> getFact() async {
    final response = await _apiClient.get(path: "/fact");
    
    if(response.statusCode != 200) {
      throw Exception("Network error");
    }
    
    final catModel = CatFactModel.fromJson(response.data);

    return CatFactEntity.fromModel(catModel);
  } 
  
  
}