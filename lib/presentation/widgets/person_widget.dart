import 'package:flutter/material.dart';
import 'package:pet/index.dart';

class PersonWidget extends StatelessWidget {
  PersonWidget({
    required String avatar,
    required String firstName,
    required String lastName,
    required String email,
    super.key,
  }) : _child = Builder(
          builder: (BuildContext context) => ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.3,
            ),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.network(
                          avatar,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => CircleAvatar(
                            radius: 48,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(
                              Icons.broken_image_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap.w12,
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Имя: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    firstName,
                                    style: context.titleMedium?.copyWith(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap.h8,
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Фамилия: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    lastName,
                                    style: context.titleMedium?.copyWith(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap.h8,
                          RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: 'Email: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    email,
                                    style: context.titleLarge?.copyWith(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                      color: Colors.blue,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );

  PersonWidget.error({
    super.key,
  }) : _child = Builder(
          builder: (BuildContext context) => ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.3,
            ),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(
                        Icons.broken_image_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    Gap.w12,
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Имя: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    '',
                                    style: context.titleMedium,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap.h8,
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Фамилия: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    '',
                                    style: context.titleMedium,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap.h8,
                          RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: 'Email: ',
                              style: context.titleLarge,
                              children: <WidgetSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: Text(
                                    '',
                                    style: context.titleLarge?.copyWith(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                      color: Colors.blue,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );

  PersonWidget.loading({
    super.key,
  }) : _child = Builder(
          builder: (BuildContext context) => Center(
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.2,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                ),
                child: SkeletonWidget(),
              ),
            ),
          ),
        );

  final Widget _child;

  @override
  Widget build(BuildContext context) => _child;
}
