part of 'cadastro_aluno_notifier.dart';

class CadastroAlunoState extends Equatable {
  CadastroAlunoState(
    {this.fullNameInputController,
    this.birthdateInputController,
    this.emailInputController,
    this.passwordInputController,
    this.repeatPasswordInputController,
    this.cadastroAlunoModelObj});

    TextEditingController? fullNameInputController;

    TextEditingController? birthdateInputController;

    TextEditingController? emailInputController;

    TextEditingController? passwordInputController;

    TextEditingController? repeatPasswordInputController;

    CadastroAlunoModel? cadastroAlunoModelObj;

    @override
    List<Object?> get props => [
      fullNameInputController,
      birthdateInputController,
      emailInputController,
      passwordInputController,
      repeatPasswordInputController,
      cadastroAlunoModelObj
    ];
  CadastroAlunoState copyWith({
    TextEditingController? fullNameInputController,
    TextEditingController? birthdateInputController,
    TextEditingController? emailInputController,
    TextEditingController? passwordInputController,
    TextEditingController? repeatPasswordInputController,
    CadastroAlunoModel? cadastroAlunoModelObj,
  }) {
    return CadastroAlunoState(
      fullNameInputController: 
        fullNameInputController ?? this.fullNameInputController,
      birthdateInputController: 
        birthdateInputController ?? this.birthdateInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      passwordInputController:
        passwordInputController ?? this.passwordInputController,
      repeatPasswordInputController: 
        repeatPasswordInputController ?? this.repeatPasswordInputController,
      cadastroAlunoModelObj: 
        cadastroAlunoModelObj ?? this.cadastroAlunoModelObj,
    );
  }
}