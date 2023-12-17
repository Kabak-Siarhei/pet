import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/index.dart';

class UsersListScreen extends StatelessWidget {
  const UsersListScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Пользователи',
            style: context.headlineSmall,
          ),
          leading: Theme(
            data: Theme.of(context),
            child: const BackButton(),
          ),
        ),
        body: BlocProvider<UsersListBloc>(
          create: (BuildContext context) => GetIt.I.get<UsersListBloc>()
            ..add(
              const UsersListEvent.started(),
            ),
          child: BlocBuilder<UsersListBloc, UsersListState>(
            builder: (BuildContext context, UsersListState state) =>
                ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              itemBuilder: (_, int i) {
                switch (state.status) {
                  case UsersListStatus.loading:
                    return PersonWidget.loading();
                  case UsersListStatus.success:
                    return PersonWidget(
                      avatar: state.users[i].avatar,
                      firstName: state.users[i].firstName,
                      lastName: state.users[i].lastName,
                      email: state.users[i].email,
                    );
                  default:
                    return PersonWidget.error();
                }
              },
              separatorBuilder: (_, __) => Gap.h12,
              itemCount: state.status == UsersListStatus.loading ||
                      state.status == UsersListStatus.initial
                  ? 10
                  : state.users.length,
            ),
          ),
        ),
      );
}
