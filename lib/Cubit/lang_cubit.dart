import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(LangInitial());
  LangCubit get(context) => BlocProvider.of(context);
  Locale locale = Locale("en");
  changeLang(Locale lang) {
    locale = lang;
    emit(ChangeLangState());
  }
}
