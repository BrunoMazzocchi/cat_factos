import 'package:catfact/features/facts/presentation/bloc/fact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<FactBloc>()..add(FactGet()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<FactBloc, FactState>(
        listener: (context, state) {
          if (state is FactError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Failed to fetch jokes')),
            );
          }
        },

        builder: (context, state) {
          if(state is FactLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FactSuccess) {
            final fact = state.fact;

            return SingleChildScrollView(
              padding:  const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 50,
              ),
              child: Text(fact.fact),
            );
          } else {
            return const Center(
              child: Text('No facts available'),
            );
          }
        },
      ),
    );
  }
}

