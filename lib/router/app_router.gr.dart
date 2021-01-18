// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../screens/home/home.dart' as _i2;
import '../screens/about.dart' as _i3;
import '../screens/contact.dart' as _i4;
import '../screens/forgot_password.dart' as _i5;
import '../screens/settings.dart' as _i6;
import '../screens/search.dart' as _i7;
import '../screens/signin.dart' as _i8;
import '../screens/signup.dart' as _i9;
import '../screens/tos.dart' as _i10;
import '../screens/authors.dart' as _i11;
import '../screens/author_page.dart' as _i12;
import '../screens/topic_page.dart' as _i13;
import '../screens/references.dart' as _i14;
import '../screens/reference_page.dart' as _i15;

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
    AuthorsDeepRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    ContactRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.Contact());
    },
    TopicsDeepRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    ForgotPasswordRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.ForgotPassword());
    },
    ReferencesDeepRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SettingsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.Settings());
    },
    SearchRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.Search());
    },
    SigninRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.Signin());
    },
    SignupRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.Signup());
    },
    TosRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.Tos());
    },
    AuthorsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i11.Authors());
    },
    AuthorPageRoute.name: (entry) {
      var route = entry.routeData.as<AuthorPageRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i12.AuthorPage(
              authorId: route.authorId,
              authorImageUrl: route.authorImageUrl ?? '',
              authorName: route.authorName ?? ''));
    },
    TopicPageRoute.name: (entry) {
      var route = entry.routeData.as<TopicPageRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i13.TopicPage(
              topicName: route.topicName ?? '', decimal: route.decimal));
    },
    ReferencesRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i14.References());
    },
    ReferencePageRoute.name: (entry) {
      var route = entry.routeData.as<ReferencePageRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i15.ReferencePage(
              referenceId: route.referenceId,
              referenceName: route.referenceName,
              referenceImageUrl: route.referenceImageUrl));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/', routeBuilder: (match) => HomeRoute.fromMatch(match)),
        _i1.RouteConfig<AboutRoute>(AboutRoute.name,
            path: '/about',
            routeBuilder: (match) => AboutRoute.fromMatch(match)),
        _i1.RouteConfig<AuthorsDeepRoute>(AuthorsDeepRoute.name,
            path: '/authors',
            routeBuilder: (match) => AuthorsDeepRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<AuthorsRoute>(AuthorsRoute.name,
                  path: '',
                  routeBuilder: (match) => AuthorsRoute.fromMatch(match)),
              _i1.RouteConfig<AuthorPageRoute>(AuthorPageRoute.name,
                  path: ':authorId',
                  routeBuilder: (match) => AuthorPageRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<ContactRoute>(ContactRoute.name,
            path: '/contact',
            routeBuilder: (match) => ContactRoute.fromMatch(match)),
        _i1.RouteConfig<TopicsDeepRoute>(TopicsDeepRoute.name,
            path: '/topics',
            routeBuilder: (match) => TopicsDeepRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<TopicPageRoute>(TopicPageRoute.name,
                  path: ':topicName',
                  routeBuilder: (match) => TopicPageRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<ForgotPasswordRoute>(ForgotPasswordRoute.name,
            path: '/forgotpassword',
            routeBuilder: (match) => ForgotPasswordRoute.fromMatch(match)),
        _i1.RouteConfig<ReferencesDeepRoute>(ReferencesDeepRoute.name,
            path: '/references',
            routeBuilder: (match) => ReferencesDeepRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<ReferencesRoute>(ReferencesRoute.name,
                  path: '',
                  routeBuilder: (match) => ReferencesRoute.fromMatch(match)),
              _i1.RouteConfig<ReferencePageRoute>(ReferencePageRoute.name,
                  path: ':referenceId',
                  routeBuilder: (match) => ReferencePageRoute.fromMatch(match))
            ]),
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

class AuthorsDeepRoute extends _i1.PageRouteInfo {
  const AuthorsDeepRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/authors', initialChildren: children);

  AuthorsDeepRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AuthorsDeepRoute';
}

class ContactRoute extends _i1.PageRouteInfo {
  const ContactRoute() : super(name, path: '/contact');

  ContactRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ContactRoute';
}

class TopicsDeepRoute extends _i1.PageRouteInfo {
  const TopicsDeepRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/topics', initialChildren: children);

  TopicsDeepRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'TopicsDeepRoute';
}

class ForgotPasswordRoute extends _i1.PageRouteInfo {
  const ForgotPasswordRoute() : super(name, path: '/forgotpassword');

  ForgotPasswordRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ForgotPasswordRoute';
}

class ReferencesDeepRoute extends _i1.PageRouteInfo {
  const ReferencesDeepRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/references', initialChildren: children);

  ReferencesDeepRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ReferencesDeepRoute';
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

class AuthorsRoute extends _i1.PageRouteInfo {
  const AuthorsRoute() : super(name, path: '');

  AuthorsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AuthorsRoute';
}

class AuthorPageRoute extends _i1.PageRouteInfo {
  AuthorPageRoute(
      {this.authorId, this.authorImageUrl = '', this.authorName = ''})
      : super(name, path: ':authorId', params: {'authorId': authorId});

  AuthorPageRoute.fromMatch(_i1.RouteMatch match)
      : authorId = match.pathParams.getString('authorId'),
        authorImageUrl = null,
        authorName = null,
        super.fromMatch(match);

  final String authorId;

  final String authorImageUrl;

  final String authorName;

  static const String name = 'AuthorPageRoute';
}

class TopicPageRoute extends _i1.PageRouteInfo {
  TopicPageRoute({this.topicName = '', this.decimal})
      : super(name, path: ':topicName', params: {'topicName': topicName});

  TopicPageRoute.fromMatch(_i1.RouteMatch match)
      : topicName = match.pathParams.getString('topicName', ''),
        decimal = null,
        super.fromMatch(match);

  final String topicName;

  final int decimal;

  static const String name = 'TopicPageRoute';
}

class ReferencesRoute extends _i1.PageRouteInfo {
  const ReferencesRoute() : super(name, path: '');

  ReferencesRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ReferencesRoute';
}

class ReferencePageRoute extends _i1.PageRouteInfo {
  ReferencePageRoute(
      {this.referenceId, this.referenceName, this.referenceImageUrl})
      : super(name, path: ':referenceId', params: {'referenceId': referenceId});

  ReferencePageRoute.fromMatch(_i1.RouteMatch match)
      : referenceId = match.pathParams.getString('referenceId'),
        referenceName = null,
        referenceImageUrl = null,
        super.fromMatch(match);

  final String referenceId;

  final String referenceName;

  final String referenceImageUrl;

  static const String name = 'ReferencePageRoute';
}