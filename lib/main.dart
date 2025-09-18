import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/cadastro_page.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // final firestore = FirebaseFirestore.instance;
  // final pacienteRemoteDatasource = PacienteRemoteDatasourceImpl(
  //   firestore: firestore,
  // );
  // final pacienteRepository = PacienteRepositoryImpl(pacienteRemoteDatasource);

  // Get.put(
  //   PacienteController(
  //     addPacienteUseCase: AddPacienteUseCase(pacienteRepository),
  //     getPacientesUseCase: GetPacientesUseCase(pacienteRepository),
  //     updatePacienteUseCase: UpdatePacienteUseCase(pacienteRepository),
  //     deletePacienteUseCase: DeletePacienteUseCase(pacienteRepository),
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF37966F)),
      ),
      home: CadastroPage(),
    );
  }
}