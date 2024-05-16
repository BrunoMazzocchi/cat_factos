import 'package:catfact/features/facts/data/datasource/fact_datasource_impl.dart';
import 'package:catfact/features/facts/domain/datasource/fact_datasource.dart';
import 'package:catfact/features/facts/domain/enitties/cat_fact_entity.dart';
import 'package:catfact/features/facts/domain/repository/fact_repository.dart';

class FactRepositoryImpl implements FactRepository {
  final FactDatasource _factDatasource;

  const FactRepositoryImpl({required FactDatasource factDatasource}) : _factDatasource = factDatasource;

  @override
  Future<CatFactEntity> getFactCat() async {
      try {
        final fact = await _factDatasource.getFact();

        return fact;
      } on Exception catch (error) {
        rethrow;
      } catch (error) {
        throw Exception("Something went wrong");
      }
  }



}