// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateColors on StateColorsBase, Store {
  final _$foregroundAtom = Atom(name: 'StateColorsBase.foreground');

  @override
  Color get foreground {
    _$foregroundAtom.context.enforceReadPolicy(_$foregroundAtom);
    _$foregroundAtom.reportObserved();
    return super.foreground;
  }

  @override
  set foreground(Color value) {
    _$foregroundAtom.context.conditionallyRunInAction(() {
      super.foreground = value;
      _$foregroundAtom.reportChanged();
    }, _$foregroundAtom, name: '${_$foregroundAtom.name}_set');
  }

  final _$backgroundAtom = Atom(name: 'StateColorsBase.background');

  @override
  Color get background {
    _$backgroundAtom.context.enforceReadPolicy(_$backgroundAtom);
    _$backgroundAtom.reportObserved();
    return super.background;
  }

  @override
  set background(Color value) {
    _$backgroundAtom.context.conditionallyRunInAction(() {
      super.background = value;
      _$backgroundAtom.reportChanged();
    }, _$backgroundAtom, name: '${_$backgroundAtom.name}_set');
  }

  final _$StateColorsBaseActionController =
      ActionController(name: 'StateColorsBase');

  @override
  void refreshTheme(Brightness brightness) {
    final _$actionInfo = _$StateColorsBaseActionController.startAction();
    try {
      return super.refreshTheme(brightness);
    } finally {
      _$StateColorsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'foreground: ${foreground.toString()},background: ${background.toString()}';
    return '{$string}';
  }
}