import 'dart:convert';
import 'package:crypto/crypto.dart';
//Criando um mapa.
//Contem chave e valor, respectivamente.
// var areas = new Map();
//Adicionando as areas de atuação dentro do mapa.
// areas['ti'] = 'TI';
// areas['fi'] = 'Finanças';
// areas['rh'] = 'Recursos Humanos';
// areas['ds'] = 'Design';
//Pra cada area add, o nome(valor) para criar a area de atuação.
// areas.forEach((sigla, nome) {
//   areas[sigla] = new AreaAtuacao(nome);
// });

//Classes abstratas são classes que, definem a estrutura mais elementar de uma classe que você possa criar.
//Elas não podem ser instanciadas, mas servem de base para criar outras a partir dela.
//Modelo para outras classes.

abstract class Usuario {
  String login;
  String senha;
  int tipo;
}

class Consultor extends Usuario {
  List<AreaAtuacao> areaAtuacao;
//Construtor define quais parametros serão obrigatorios para as outras classes.
  Consultor(String login, String senha) {
    //this. referencia o proprio objeto.
    this.login = login;
    this.senha = senha;
    this.tipo = 1;
    this.areaAtuacao = new List();
  }
  void addAreaAtuacao(AreaAtuacao areaAtuacao) {
    this.areaAtuacao.add(areaAtuacao);
  }
}

class MicroEmpreendedor extends Usuario {
  MicroEmpreendedor(String login, String senha) {
    this.login = login;
    this.senha = senha;
    this.tipo = 2;
  }
}

class CadastroUsuario {
  List<Usuario> usuario;
  CadastroUsuario() {
    this.usuario = List();
  }

  // static não precisa de instanciar o objeto p/ uso. 'nomeclasse'.'função'('Parametros','Parametros', ).
  Usuario criarConsultor(String login, String senha) {
    //Criptografa a senha do usuario.
    senha = this.textToMd5(senha);
    if (this.usuarioExiste(login, senha)) {
      throw new Exception('Usuario ja existe.');
    }
    Consultor consultor = new Consultor(login, senha);
    //Guarda o consultor criado na lista de Usuarios.
    this.usuario.add(consultor);
    return consultor;
  }

  Usuario criarMicroEmpreendedor(String login, String senha) {
    //Criptografa a senha do usuario.
    senha = this.textToMd5(senha);
    if (this.usuarioExiste(login, senha)) {
      throw new Exception('Usuario ja existe.');
    }
    MicroEmpreendedor microEmpreendedor = new MicroEmpreendedor(login, senha);
    //Guarda o microEmpreendedor criado na lista de Usuarios.
    this.usuario.add(microEmpreendedor);
    return microEmpreendedor;
  }

  bool usuarioExiste(String login, String senha) {
    var existe = this
        .usuario
        .where((element) => element.login == login && element.senha == senha);
    return existe.isNotEmpty;
  }

  String textToMd5(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}

class AreaAtuacao {
  String nome;
//!!Adicionar link's dos cursos!!
  List<Curso> curso;

  AreaAtuacao(String nome) {
    this.nome = nome;
    this.curso = new List();
  }

  AreaAtuacao addCurso(Curso curso) {
    this.curso.add(curso);
    return this;
  }
}

class Curso {
  String nome;
  List<String> video;

  Curso(String nome) {
    this.nome = nome;
    this.video = new List();
  }

  void addVideo(String video) {
    this.video.add(video);
  }
}
