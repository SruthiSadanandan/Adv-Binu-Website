import 'dart:html'as html;

import 'package:adv_ks_binu_assosciates/features/video_management/presentation/bloc/video_creator/video_creator_bloc.dart';
import 'package:adv_ks_binu_assosciates/features/video_management/presentation/pages/widgets/video_widgets.dart';
import 'package:adv_ks_binu_assosciates/firebase_options.dart';
import 'package:adv_ks_binu_assosciates/injection_container.dart';
import 'package:adv_ks_binu_assosciates/view/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
    html.document.title='Adv. Shaila Rani';
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VideoManagerBloc>(
            create: (context) =>
                sl<VideoManagerBloc>()..add(VideoManagerFetchEvent())),
        BlocProvider<VideoCreatorBloc>(
            create: (context) => sl<VideoCreatorBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Adv K S Binu Associates',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
  // home:  const LoginDashBoard(),
    )
    );
  }
}
 

