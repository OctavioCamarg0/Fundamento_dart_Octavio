void main() {
  print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];


  //1º Imprima os dados dos pacientes na tela
  var n = 0;
  for (var paciente in pacientes) {
    n = n + 1;
    var pacienteSeparado = paciente.split('|');
    print('Paciente $n: ${pacienteSeparado[0]} idade: ${pacienteSeparado[1]} profissão: ${pacienteSeparado[2]} estado: ${pacienteSeparado[3]}');
  }
  
  print('---------------------------------------------------------------------------');

  //2º Imprima os pacientes acima de 20 anos
  for (var paciente in pacientes) {
    var pacienteSeparado = paciente.split('|');
    final idade = int.tryParse(pacienteSeparado[1]);
    if (idade != null) 
      if (idade > 20) {
        print('Pacientes acima de 20 anos: ${pacienteSeparado[0]} idade: ${pacienteSeparado[1]} profissão: ${pacienteSeparado[2]} estado: ${pacienteSeparado[3]}');
    }
  }

  
  var profissao = [];
  print('---------------------------------------------------------------------------');
  // 3º Imprima a quantidade de pacientes por profissão
  for (var paciente in pacientes) {
    var pacienteSeparado = paciente.split('|');
    if (!profissao.contains(pacienteSeparado[2]) || profissao.contains(pacienteSeparado[2])) {
      profissao.add(pacienteSeparado[2].toLowerCase());
    }
  }

  print('\n// 3º - Quantidade de pacientes por profissão');  
  print( '- Quantidade de Desenvolvedore(s):  ${profissao.where((profisao) => profisao == 'desenvolvedor').length}');
  print( '- Quantidade de Estudante(s):  ${profissao.where((profisao) => profisao == 'estudante').length}'); 
  print( '- Quantidade de Dentista(s):  ${profissao.where((profisao) => profisao == 'dentista').length}');
  print( '- Quantidade de Jornalista(s):  ${profissao.where((profisao) => profisao == 'jornalista').length}');

  // 4º Imprima os pacientes por estado.
  // Deve ser impresso apenas Nome, idade e profissão.

  print('---------------------------------------------------------------------------');

  print('Pacientes em SP: ');
  for (var paciente in pacientes) {
    var pacienteSeparado = paciente.split('|');
    if (pacienteSeparado[3] == 'SP')
      print('Nome: ${pacienteSeparado[0]}, idade: ${pacienteSeparado[1]}, profissão: ${pacienteSeparado[2]}');
  }

  print('---------------------------------------------------------------------------');

  print('Pacientes em MG: ');
  for (var paciente in pacientes) {
    var pacienteSeparado = paciente.split('|');
    if (pacienteSeparado[3] == 'MG')
      print('Nome: ${pacienteSeparado[0]}, idade: ${pacienteSeparado[1]}, profissão: ${pacienteSeparado[2]}');
  }

  print('---------------------------------------------------------------------------');

  // 5º Exclua todos os estudantes e em seguida imprima os pacientes
  pacientes.removeWhere((paciente) => paciente.contains('estudante'));
  var nu = 0;
  for (var paciente in pacientes) {
    nu = nu + 1;
    var pacienteSeparado = paciente.split('|');
    print('Paciente $nu: ${pacienteSeparado[0]} idade: ${pacienteSeparado[1]} profissão: ${pacienteSeparado[2]} estado: ${pacienteSeparado[3]}');
  }
  

  // 6º Inclua os pacentes abaixo nas primeira posições
  final pacientesNovos = ['Manoel Silva|12|estagiário|MG', 'Joaquim Rahman|18|estagiário|SP', 'Fernando Verne|35|estagiário|MG'];
  pacientes.insertAll(0, pacientesNovos);
  // Manoel Silva|12|estagiário|MG'
  // Joaquim Rahman|18|estagiário|SP
  // Fernando Verne|35|estagiário|MG'
  
}