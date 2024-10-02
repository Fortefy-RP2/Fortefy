import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/cadastro_aluno_model.dart';
part 'cadastro_aluno_state.dart';

final cadastroAlunoNotifier =
  StateNotifierProvider<CadastroAlunoNotifier, CadastroAlunoState> (
    (ref) => CadastroAlunoNotifier(CadastroAlunoState(
      fullNameInputController: TextEditingController(),
      birthdateInputController: TextEditingController(),
      emailInputController: TextEditingController(),
      passwordInputController: TextEditingController(),
      repeatPasswordInputController: TextEditingController(),
  )),
);

class CadastroAlunoNotifier extends StateNotifier<CadastroAlunoState> {
  CadastroAlunoNotifier(CadastroAlunoState state) : super(state);
}