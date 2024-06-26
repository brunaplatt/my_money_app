// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  late final _$isLoadingAtom =
      Atom(name: '_LoginController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isSuccessAtom =
      Atom(name: '_LoginController.isSuccess', context: context);

  @override
  bool get isSuccess {
    _$isSuccessAtom.reportRead();
    return super.isSuccess;
  }

  @override
  set isSuccess(bool value) {
    _$isSuccessAtom.reportWrite(value, super.isSuccess, () {
      super.isSuccess = value;
    });
  }

  late final _$isFirstAcessAtom =
      Atom(name: '_LoginController.isFirstAcess', context: context);

  @override
  bool get isFirstAcess {
    _$isFirstAcessAtom.reportRead();
    return super.isFirstAcess;
  }

  @override
  set isFirstAcess(bool value) {
    _$isFirstAcessAtom.reportWrite(value, super.isFirstAcess, () {
      super.isFirstAcess = value;
    });
  }

  late final _$checkDataAsyncAction =
      AsyncAction('_LoginController.checkData', context: context);

  @override
  Future<void> checkData(
      {required String emailController,
      required String passwordController,
      required BuildContext buildContext}) {
    return _$checkDataAsyncAction.run(() => super.checkData(
        emailController: emailController,
        passwordController: passwordController,
        buildContext: buildContext));
  }

  late final _$sendDataAsyncAction =
      AsyncAction('_LoginController.sendData', context: context);

  @override
  Future<void> sendData() {
    return _$sendDataAsyncAction.run(() => super.sendData());
  }

  late final _$verifyFirstAcessAsyncAction =
      AsyncAction('_LoginController.verifyFirstAcess', context: context);

  @override
  Future<void> verifyFirstAcess() {
    return _$verifyFirstAcessAsyncAction.run(() => super.verifyFirstAcess());
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void setSucess({bool? value}) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setSucess');
    try {
      return super.setSucess(value: value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading({bool? value}) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setLoading');
    try {
      return super.setLoading(value: value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getException(int code) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.getException');
    try {
      return super.getException(code);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isSuccess: ${isSuccess},
isFirstAcess: ${isFirstAcess}
    ''';
  }
}