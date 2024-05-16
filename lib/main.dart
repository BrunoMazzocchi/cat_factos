import 'package:catfact/configs/wrapper/data_wrapper.dart';
import 'package:catfact/configs/wrapper/repository_wrapper.dart';
import 'package:flutter/material.dart';

import 'configs/wrapper/bloc_wrapper.dart';
import 'features/app.dart';

void main() {
  runApp(
    const DataProvider(
      child: RepositoryWrapper(
        child: BlocWrapper(
          child: App(),
        ),
      ),
    ),
  );
}