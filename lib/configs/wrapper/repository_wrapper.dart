
import 'package:catfact/features/facts/data/datasource/fact_datasource_impl.dart';
import 'package:catfact/features/facts/data/fact_repository_impl/fact_repository_impl.dart';
import 'package:catfact/features/facts/domain/repository/fact_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryWrapper extends StatelessWidget {
  final Widget child;

  const RepositoryWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FactRepository>(
          create: (context) => FactRepositoryImpl(
            factDatasource: FactDatasourceImpl(
              apiClient: context.read(),
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}