import 'package:flutter/material.dart';
import 'package:pets_finder_app/pets_finder_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(PetsFinderApp(appRouter: AppRouter()));
}
