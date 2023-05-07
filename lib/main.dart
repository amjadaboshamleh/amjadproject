import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/Cubit/lang_cubit.dart';
import 'package:untitled4/Login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LangCubit(),
      child: BlocConsumer<LangCubit, LangState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: LangCubit().get(context).locale,
            home: Login_Screen(),
          );
        },
      ),
    );
  }
}
