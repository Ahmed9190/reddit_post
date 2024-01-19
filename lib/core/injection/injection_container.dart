import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

final GetIt sl = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async => sl.init(environment: env);
