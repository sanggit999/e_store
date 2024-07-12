import 'package:e_store/features/authentication/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:e_store/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get the path of the application document folder
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  // Open box
  await Hive.openBox("e-store");
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => OnboardingCubit(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
