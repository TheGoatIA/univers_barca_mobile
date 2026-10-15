// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Univers Barça';

  @override
  String get common_ok => 'OK';

  @override
  String get common_cancel => 'Cancelar';

  @override
  String get common_save => 'Guardar';

  @override
  String get common_delete => 'Eliminar';

  @override
  String get common_edit => 'Editar';

  @override
  String get common_back => 'Volver';

  @override
  String get common_retry => 'Reintentar';

  @override
  String get common_loading => 'Cargando...';

  @override
  String get common_error => 'Ha ocurrido un error';

  @override
  String get common_empty => 'Nada que mostrar';

  @override
  String get common_search => 'Buscar';

  @override
  String get common_confirm => 'Confirmar';

  @override
  String get auth_login => 'Iniciar sesión';

  @override
  String get auth_logout => 'Cerrar sesión';

  @override
  String get auth_register => 'Crear cuenta';

  @override
  String get auth_email => 'Correo electrónico';

  @override
  String get auth_password => 'Contraseña';

  @override
  String get auth_forgot_password => '¿Olvidaste tu contraseña?';

  @override
  String get auth_no_account => '¿Aún no tienes cuenta?';

  @override
  String get auth_already_account => '¿Ya tienes cuenta?';

  @override
  String get errors_network => 'Sin conexión a internet. Comprueba tu red.';

  @override
  String get errors_server => 'Error del servidor. Inténtalo más tarde.';

  @override
  String get errors_unknown => 'Ha ocurrido un error inesperado.';

  @override
  String get errors_validation => 'Comprueba los datos introducidos.';

  @override
  String get errors_session_expired => 'Sesión caducada. Vuelve a iniciar sesión.';

  @override
  String get navigation_home => 'Inicio';

  @override
  String get navigation_profile => 'Perfil';

  @override
  String get navigation_settings => 'Ajustes';

  @override
  String get navigation_notifications => 'Notificaciones';

  @override
  String get players_title => 'Plantilla';

  @override
  String get players_empty => 'Ningún jugador disponible.';
}
