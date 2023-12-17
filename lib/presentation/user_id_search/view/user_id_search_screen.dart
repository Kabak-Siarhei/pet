import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/index.dart';

class UserIdSearchScreen extends StatefulWidget {
  const UserIdSearchScreen({super.key});

  @override
  State<UserIdSearchScreen> createState() => _UserIdSearchScreenState();
}

class _UserIdSearchScreenState extends State<UserIdSearchScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Идентификатор пользователя',
            style: context.headlineSmall,
          ),
        ),
        body: BlocProvider<SearchBloc>(
          create: (BuildContext context) => GetIt.I.get<SearchBloc>()
            ..add(
              const SearchEvent.started(),
            ),
          child: BlocConsumer<SearchBloc, SearchState>(
            listener: (BuildContext context, SearchState state) {
              textEditingController
                ..clear()
                ..text = state.userId
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: textEditingController.text.length),
                );
            },
            builder: (BuildContext context, SearchState state) => Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      enabled: true,
                      enableSuggestions: false,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (String value) =>
                          context.read<SearchBloc>().add(
                                SearchEvent.userIdChanged(userId: value),
                              ),
                      onSubmitted: (String? value) =>
                          context.read<SearchBloc>().add(
                                SearchEvent.userIdChanged(userId: value),
                              ),
                    ),
                    Gap.h24,
                    Row(
                      children: <Widget>[
                        Gap.w20,
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => context.router.push(
                              '${AppRouter.infoUserPath}/${state.userId}',
                            ),
                            child: const Text('Найти'),
                          ),
                        ),
                        Gap.w20,
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => context.router.push(
                              AppRouter.usersListPath,
                            ),
                            child: const Text('Список'),
                          ),
                        ),
                        Gap.w20,
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
