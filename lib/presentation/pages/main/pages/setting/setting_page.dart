import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/scheduling/bloc/scheduling_bloc.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: AppTypography(context).heading2,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Restaurant notification',
              style: AppTypography(context).body1,
            ),
            subtitle: Text(
              'enable notification',
              style: AppTypography(context).subtitle3,
            ),
            trailing: BlocBuilder<SchedulingBloc, SchedulingState>(
              builder: (context, state) {
                return Switch.adaptive(
                  value: state.isScheduled,
                  onChanged: (value) => context
                      .read<SchedulingBloc>()
                      .add(SchedulingEvent.changed(value)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
