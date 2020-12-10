import 'package:flutter/material.dart';
import 'package:projetofinal/home_screen.dart';
import './curso.dart';

void main() {
  runApp(MyApp());
// Areas de atuacao
  AreaAtuacao ti = new AreaAtuacao('TI');
  AreaAtuacao fi = new AreaAtuacao('Finanças');
  AreaAtuacao rh = new AreaAtuacao('Recursos Humanos');
  AreaAtuacao ds = new AreaAtuacao('Design');

//CURSOS TI

  Curso curso1TI = new Curso('TI');
  Curso curso2TI = new Curso('TI');
  Curso curso3TI = new Curso('TI');

  curso1TI.addVideo('http://youtube.com');
  curso1TI.addVideo('http://youtube.com');
  curso1TI.addVideo('http://youtube.com');

  curso2TI.addVideo('http://youtube.com');
  curso2TI.addVideo('http://youtube.com');
  curso2TI.addVideo('http://youtube.com');

  curso3TI.addVideo('http://youtube.com');
  curso3TI.addVideo('http://youtube.com');
  curso3TI.addVideo('http://youtube.com');

//CURSOS FI

  Curso curso1FI = new Curso('Finanças');
  Curso curso2FI = new Curso('Finanças');
  Curso curso3FI = new Curso('Finanças');

  curso1FI.addVideo('http://youtube.com');
  curso1FI.addVideo('http://youtube.com');
  curso1FI.addVideo('http://youtube.com');

  curso2FI.addVideo('http://youtube.com');
  curso2FI.addVideo('http://youtube.com');
  curso2FI.addVideo('http://youtube.com');

  curso3FI.addVideo('http://youtube.com');
  curso3FI.addVideo('http://youtube.com');
  curso3FI.addVideo('http://youtube.com');

//CURSOS RH

  Curso curso1RH = new Curso('Recursos Humanos');
  Curso curso2RH = new Curso('Recursos Humanos');
  Curso curso3RH = new Curso('Recursos Humanos');

  curso1RH.addVideo('http://youtube.com');
  curso1RH.addVideo('http://youtube.com');
  curso1RH.addVideo('http://youtube.com');

  curso2RH.addVideo('http://youtube.com');
  curso2RH.addVideo('http://youtube.com');
  curso2RH.addVideo('http://youtube.com');

  curso3RH.addVideo('http://youtube.com');
  curso3RH.addVideo('http://youtube.com');
  curso3RH.addVideo('http://youtube.com');

//CURSOS DESIGN

  Curso curso1DS = new Curso('Design');
  Curso curso2DS = new Curso('Design');
  Curso curso3DS = new Curso('Design');

  curso1DS.addVideo('http://youtube.com');
  curso1DS.addVideo('http://youtube.com');
  curso1DS.addVideo('http://youtube.com');

  curso2DS.addVideo('http://youtube.com');
  curso2DS.addVideo('http://youtube.com');
  curso2DS.addVideo('http://youtube.com');

  curso3DS.addVideo('http://youtube.com');
  curso3DS.addVideo('http://youtube.com');
  curso3DS.addVideo('http://youtube.com');

  // Adição dos cursos nas Areas de atuacao.
  ti.addCurso(curso1TI).addCurso(curso2TI).addCurso(curso3TI);
  fi.addCurso(curso1FI).addCurso(curso2FI).addCurso(curso3FI);
  rh.addCurso(curso1RH).addCurso(curso2RH).addCurso(curso3RH);
  ds.addCurso(curso1DS).addCurso(curso2DS).addCurso(curso3DS);

  CadastroUsuario cadastroUsuario = new CadastroUsuario();

  Consultor consultor1 = cadastroUsuario.criarConsultor('denis', 'morte');
  Consultor consultor2 = cadastroUsuario.criarConsultor('penis', 'morte');
  Consultor consultor3 = cadastroUsuario.criarConsultor('piriquita', 'morte');
  Consultor consultor4 = cadastroUsuario.criarConsultor('jailson', 'morte');

  consultor1.addAreaAtuacao(ti);
  consultor2.addAreaAtuacao(fi);
  consultor3.addAreaAtuacao(rh);
  consultor4.addAreaAtuacao(ds);

  MicroEmpreendedor micro1 =
      cadastroUsuario.criarMicroEmpreendedor('denis', 'morte');
  MicroEmpreendedor micro2 =
      cadastroUsuario.criarMicroEmpreendedor('penis', 'morte');
  MicroEmpreendedor micro3 =
      cadastroUsuario.criarMicroEmpreendedor('piriquita', 'morte');
  MicroEmpreendedor micro4 =
      cadastroUsuario.criarMicroEmpreendedor('jailson', 'morte');

  print(cadastroUsuario);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
