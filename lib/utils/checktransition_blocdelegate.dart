import 'package:bloc/bloc.dart';

///
/// En esta clase definimos nuestro Bloc Delegate, es decir, una entidad cuyos
/// métodos saltarán cuando ocurran Transiciones de estado, Eventos o Errores en
/// nuestros blocs. Usado en un principio para los logs.
///
class CheckTransitionsBlocDelegate extends BlocDelegate{
  ///
  /// Se lanza automáticamente en cada transición de estado que ocurra en un
  /// Bloc
  ///
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  ///
  /// Se lanza automáticamente en cada evento lanzado que reciba un Bloc
  ///
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('EVENTO LANZADO: ' + event.toString());
  }

  ///
  /// Se lanza de forma automática cuando ocurra un error en una transición de
  /// estado
  ///
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('$error, $stacktrace');
  }
}