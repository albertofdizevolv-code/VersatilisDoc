import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  AppVersatilisAuthUser? initialUser;
  AppVersatilisAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(AppVersatilisAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? AgendaDeConsultasWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? AgendaDeConsultasWidget()
              : LoginWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: RegisterWidget.routeName,
          path: RegisterWidget.routePath,
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: ForgetPassWidget.routeName,
          path: ForgetPassWidget.routePath,
          builder: (context, params) => ForgetPassWidget(),
        ),
        FFRoute(
          name: CodeCheckWidget.routeName,
          path: CodeCheckWidget.routePath,
          builder: (context, params) => CodeCheckWidget(),
        ),
        FFRoute(
          name: ResetPassWidget.routeName,
          path: ResetPassWidget.routePath,
          builder: (context, params) => ResetPassWidget(),
        ),
        FFRoute(
          name: AgendaDeConsultasWidget.routeName,
          path: AgendaDeConsultasWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendaDeConsultasWidget(),
        ),
        FFRoute(
          name: MedicosDisponiveisWidget.routeName,
          path: MedicosDisponiveisWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MedicosDisponiveisWidget(
            codEspecialidade: params.getParam(
              'codEspecialidade',
              ParamType.int,
            ),
            especialidade: params.getParam(
              'especialidade',
              ParamType.String,
            ),
            unidade: params.getParam(
              'unidade',
              ParamType.String,
            ),
            tipo: params.getParam(
              'tipo',
              ParamType.String,
            ),
            data: params.getParam(
              'data',
              ParamType.String,
            ),
            codUnidade: params.getParam(
              'codUnidade',
              ParamType.int,
            ),
            codProcedimento: params.getParam(
              'codProcedimento',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AgendarConsultaWidget.routeName,
          path: AgendarConsultaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendarConsultaWidget(
            nomeMedico: params.getParam(
              'nomeMedico',
              ParamType.String,
            ),
            especialidade: params.getParam(
              'especialidade',
              ParamType.String,
            ),
            unidadde: params.getParam(
              'unidadde',
              ParamType.String,
            ),
            codColaborador: params.getParam(
              'codColaborador',
              ParamType.int,
            ),
            data: params.getParam(
              'data',
              ParamType.String,
            ),
            codUnidade: params.getParam(
              'codUnidade',
              ParamType.int,
            ),
            codEspecialidade: params.getParam(
              'codEspecialidade',
              ParamType.int,
            ),
            tipo: params.getParam(
              'tipo',
              ParamType.String,
            ),
            codProcedimento: params.getParam(
              'codProcedimento',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PacotesWidget.routeName,
          path: PacotesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PacotesWidget(
            codUnidade: params.getParam(
              'codUnidade',
              ParamType.int,
            ),
            codPlano: params.getParam(
              'codPlano',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PacotesDetalhesWidget.routeName,
          path: PacotesDetalhesWidget.routePath,
          builder: (context, params) => PacotesDetalhesWidget(
            item: params.getParam(
              'item',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ListarPacotesStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PacotesDetalhesAgendarWidget.routeName,
          path: PacotesDetalhesAgendarWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PacotesDetalhesAgendarWidget(),
        ),
        FFRoute(
          name: UnidadesWidget.routeName,
          path: UnidadesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UnidadesWidget(
            especialidade: params.getParam(
              'especialidade',
              ParamType.int,
            ),
            nomeEspecialidade: params.getParam(
              'nomeEspecialidade',
              ParamType.String,
            ),
            tipo: params.getParam(
              'tipo',
              ParamType.String,
            ),
            data: params.getParam(
              'data',
              ParamType.String,
            ),
            codProcedimento: params.getParam(
              'codProcedimento',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AgendamentoSucessoWidget.routeName,
          path: AgendamentoSucessoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendamentoSucessoWidget(
            cdVenda: params.getParam(
              'cdVenda',
              ParamType.int,
            ),
            codAgendamento: params.getParam(
              'codAgendamento',
              ParamType.int,
            ),
            convenio: params.getParam(
              'convenio',
              ParamType.String,
            ),
            valor: params.getParam(
              'valor',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: ConfirmarAgendamentoWidget.routeName,
          path: ConfirmarAgendamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ConfirmarAgendamentoWidget(),
        ),
        FFRoute(
          name: EscolherAgendamentoWidget.routeName,
          path: EscolherAgendamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EscolherAgendamentoWidget(),
        ),
        FFRoute(
          name: NotificaoWidget.routeName,
          path: NotificaoWidget.routePath,
          builder: (context, params) => NotificaoWidget(),
        ),
        FFRoute(
          name: HistoricoWidget.routeName,
          path: HistoricoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HistoricoWidget(),
        ),
        FFRoute(
          name: EditarPerfilWidget.routeName,
          path: EditarPerfilWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EditarPerfilWidget(),
        ),
        FFRoute(
          name: AgendaWidget.routeName,
          path: AgendaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendaWidget(),
        ),
        FFRoute(
          name: CentralInfoWidget.routeName,
          path: CentralInfoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CentralInfoWidget(),
        ),
        FFRoute(
          name: PainelAlertasWidget.routeName,
          path: PainelAlertasWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PainelAlertasWidget(),
        ),
        FFRoute(
          name: ProntuarioWidget.routeName,
          path: ProntuarioWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ProntuarioWidget(
            paciente: params.getParam<ProntuarioAtendimentoStruct>(
              'paciente',
              ParamType.DataStruct,
              isList: true,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: CriarPacienteWidget.routeName,
          path: CriarPacienteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CriarPacienteWidget(),
        ),
        FFRoute(
          name: AgendaDadosWidget.routeName,
          path: AgendaDadosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendaDadosWidget(),
        ),
        FFRoute(
          name: FichaDoPacienteWidget.routeName,
          path: FichaDoPacienteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => FichaDoPacienteWidget(
            usuario: params.getParam(
              'usuario',
              ParamType.DataStruct,
              isList: false,
              structBuilder: UsuarioCpfStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: EscolherExamesWidget.routeName,
          path: EscolherExamesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EscolherExamesWidget(
            paciente: params.getParam(
              'paciente',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
            exame: params.getParam(
              'exame',
              ParamType.DataStruct,
              isList: false,
              structBuilder: SolicitacaoExameItensStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PerfilWidget.routeName,
          path: PerfilWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PerfilWidget(),
        ),
        FFRoute(
          name: ExameseProcedimentosWidget.routeName,
          path: ExameseProcedimentosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ExameseProcedimentosWidget(),
        ),
        FFRoute(
          name: MeusPacotesWidget.routeName,
          path: MeusPacotesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MeusPacotesWidget(),
        ),
        FFRoute(
          name: AgendarPacotesCompradosWidget.routeName,
          path: AgendarPacotesCompradosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendarPacotesCompradosWidget(
            pacote: params.getParam(
              'pacote',
              ParamType.DataStruct,
              isList: false,
              structBuilder: PacoteVendidoStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: ProntuarioDetalhesEditWidget.routeName,
          path: ProntuarioDetalhesEditWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ProntuarioDetalhesEditWidget(
            html: params.getParam(
              'html',
              ParamType.String,
            ),
            paciente: params.getParam(
              'paciente',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: ProntuarioInicioWidget.routeName,
          path: ProntuarioInicioWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ProntuarioInicioWidget(
            paciente: params.getParam(
              'paciente',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PedidoDeExameWidget.routeName,
          path: PedidoDeExameWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PedidoDeExameWidget(
            paciente: params.getParam(
              'paciente',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
            pedidoExame: params.getParam(
              'pedidoExame',
              ParamType.DataStruct,
              isList: false,
              structBuilder: PedidoExameStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: MeusExamesWidget.routeName,
          path: MeusExamesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MeusExamesWidget(),
        ),
        FFRoute(
          name: AgendarExameWidget.routeName,
          path: AgendarExameWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AgendarExameWidget(
            especialidade: params.getParam(
              'especialidade',
              ParamType.String,
            ),
            data: params.getParam(
              'data',
              ParamType.String,
            ),
            codUnidade: params.getParam(
              'codUnidade',
              ParamType.int,
            ),
            codEspecialidade: params.getParam(
              'codEspecialidade',
              ParamType.int,
            ),
            tipo: params.getParam(
              'tipo',
              ParamType.String,
            ),
            codProcedimento: params.getParam(
              'codProcedimento',
              ParamType.int,
            ),
            codPlano: params.getParam(
              'codPlano',
              ParamType.int,
            ),
            nomePlano: params.getParam(
              'nomePlano',
              ParamType.String,
            ),
            nomeUnidade: params.getParam(
              'nomeUnidade',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EditarExamesWidget.routeName,
          path: EditarExamesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EditarExamesWidget(
            paciente: params.getParam(
              'paciente',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProntuarioAtendimentoStruct.fromSerializableMap,
            ),
            modelo: params.getParam(
              'modelo',
              ParamType.String,
            ),
            codModelo: params.getParam(
              'codModelo',
              ParamType.int,
            ),
            procedimento: params.getParam(
              'procedimento',
              ParamType.DataStruct,
              isList: false,
              structBuilder: SolicitacaoExameItensStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: EscolherReceitaWidget.routeName,
          path: EscolherReceitaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EscolherReceitaWidget(),
        ),
        FFRoute(
          name: EditarPacienteWidget.routeName,
          path: EditarPacienteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EditarPacienteWidget(
            user: params.getParam(
              'user',
              ParamType.DataStruct,
              isList: false,
              structBuilder: UsuarioCpfStruct.fromSerializableMap,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
