import '../../domain/enitties/cat_fact_entity.dart';

class CatFactModel extends CatFactEntity {
  const CatFactModel({
    required super.fact,
    required super.length,
  });


  factory CatFactModel.fromJson(Map<String, dynamic> json) {
    return CatFactModel(
      fact: json["fact"],
      length: json["length"]
    );
  }
}