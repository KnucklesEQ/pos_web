import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:zeive_pos/poszeive_app.dart';
import 'package:zeive_pos/utils/checktransition_blocdelegate.dart';

void main() async {
  //Si ejecutamos alguna función async antes de runApp, tenemos que meter esta
  //línea dentro del main para indicarle que espere a que se completen estas
  //funciones
  WidgetsFlutterBinding.ensureInitialized();

  //Montamos el Bloc Delegate, con el que vamos a registrar todas las
  //Transiciones entre estados que ocurran en los Blocs que vayamos montando
  BlocSupervisor.delegate = CheckTransitionsBlocDelegate();

  runApp(PosZeiveApp());
}


