// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../screens/home/home.dart' as _i2;
import '../screens/about.dart' as _i3;
import '../screens/forgot_password.dart' as _i4;
import '../screens/settings.dart' as _i5;
import '../screens/search.dart' as _i6;
import '../screens/signin.dart' as _i7;
import '../screens/signup.dart' as _i8;
import '../screens/tos.dart' as _i9;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      var route = entry.routeData.as<HomeRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.Home(mobileInitialIndex: route.mobileInitialIndex ?? 0));
    },
    AboutRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.About());
    },
    ForgotPasswordRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.ForgotPassword());
    },
    SettingsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.Settings());
    },
    SearchRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.Search());
    },
    SigninRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.Signin());
    },
    SignupRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.Signup());
    },
    TosRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.Tos());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/', routeBuilder: (match) => HomeRoute.fromMatch(match)),
        _i1.RouteConfig<AboutRoute>(AboutRoute.name,
            path: '/about',
            routeBuilder: (match) => AboutRoute.fromMatch(match)),
        _i1.RouteConfig<ForgotPasswordRoute>(ForgotPasswordRoute.name,
            path: '/forgotpassword',
            routeBuilder: (match) => ForgotPasswordRoute.fromMatch(match)),
        _i1.RouteConfig<SettingsRoute>(SettingsRoute.name,
            path: '/settings',
            routeBuilder: (match) => SettingsRoute.fromMatch(match)),
        _i1.RouteConfig<SearchRoute>(SearchRoute.name,
            path: '/search',
            routeBuilder: (match) => SearchRoute.fromMatch(match)),
        _i1.RouteConfig<SigninRoute>(SigninRoute.name,
            path: '/signin',
            routeBuilder: (match) => SigninRoute.fromMatch(match)),
        _i1.RouteConfig<SignupRoute>(SignupRoute.name,
            path: '/signup',
            routeBuilder: (match) => SignupRoute.fromMatch(match)),
        _i1.RouteConfig<TosRoute>(TosRoute.name,
            path: '/tos', routeBuilder: (match) => TosRoute.fromMatch(match))
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  HomeRoute({this.mobileInitialIndex = 0}) : super(name, path: '/');

  HomeRoute.fromMatch(_i1.RouteMatch match)
      : mobileInitialIndex = null,
        super.fromMatch(match);

  final int mobileInitialIndex;

  static const String name = 'HomeRoute';
}

class AboutRoute extends _i1.PageRouteInfo {
  const AboutRoute() : super(name, path: '/about');

  AboutRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AboutRoute';
}

class ForgotPasswordRoute extends _i1.PageRouteInfo {
  const ForgotPasswordRoute() : super(name, path: '/forgotpassword');

  ForgotPasswordRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ForgotPasswordRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings');

  SettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsRoute';
}

class SearchRoute extends _i1.PageRouteInfo {
  const SearchRoute() : super(name, path: '/search');

  SearchRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SearchRoute';
}

class SigninRoute extends _i1.PageRouteInfo {
  const SigninRoute() : super(name, path: '/signin');

  SigninRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SigninRoute';
}

class SignupRoute extends _i1.PageRouteInfo {
  const SignupRoute() : super(name, path: '/signup');

  SignupRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SignupRoute';
}

class TosRoute extends _i1.PageRouteInfo {
  const TosRoute() : super(name, path: '/tos');

  TosRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'TosRoute';
}
