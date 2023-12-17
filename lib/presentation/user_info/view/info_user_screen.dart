import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/index.dart';

class InfoUserScreen extends StatelessWidget {
  const InfoUserScreen({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'ID Пользователя: $id',
            style: context.headlineSmall,
          ),
          leading: Theme(
            data: Theme.of(context),
            child: const BackButton(),
          ),
        ),
        body: BlocProvider<UserInfoBloc>(
          create: (BuildContext context) => GetIt.I.get<UserInfoBloc>()
            ..add(
              UserInfoEvent.started(
                id: id,
              ),
            ),
          child: BlocBuilder<UserInfoBloc, UserInfoState>(
            builder: (BuildContext context, UserInfoState state) {
              switch (state.status) {
                case UserInfoStatus.loading:
                  return Center(
                    child: PersonWidget.loading(),
                  );
                case UserInfoStatus.success:
                  return Center(
                    child: PersonWidget(
                      avatar: state.person!.avatar,
                      firstName: state.person!.firstName,
                      lastName: state.person!.lastName,
                      email: state.person!.email,
                    ),
                  );
                default:
                  return Center(
                    child: PersonWidget.error(),
                  );
              }
            },
          ),
        ),
      );
}
