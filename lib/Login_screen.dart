import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:untitled4/Cubit/lang_cubit.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LangCubit, LangState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text(AppLocalizations.of(context)!.register),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context) =>
                      AppLocalizations.supportedLocales.map((e) {
                        return PopupMenuItem(
                          child: Text(e.languageCode),
                          value: e,
                          onTap: () {
                            LangCubit().get(context).changeLang(e);
                          },
                        );
                      }).toList()),
            ],
          ),
          body: Center(
            child: Text(AppLocalizations.of(context)!.password),
          ),
        );
      },
    );
  }
}
