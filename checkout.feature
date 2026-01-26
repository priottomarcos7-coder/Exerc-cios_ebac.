Funcionalidade: Cadastro no checkout

  Contexto:
    Dado que o usuário está na tela de cadastro do checkout

  Cenário: Cadastro com todos os dados obrigatórios preenchidos corretamente
    Quando o usuário preenche todos os campos obrigatórios
    E informa um e-mail válido
    Então o cadastro deve ser realizado com sucesso

  Cenário: Cadastro com campos obrigatórios vazios
    Quando o usuário tenta finalizar o cadastro sem preencher todos os campos
    Então o sistema deve exibir uma mensagem de alerta

  Esquema do Cenário: Cadastro com e-mail inválido
    Quando o usuário informa o e-mail <email>
    Então o sistema deve exibir uma mensagem de erro de e-mail inválido

    Exemplos:
      | email            |
      | usuario@         |
      | usuario.com      |
      | @dominio.com     |
      | usuario@dominio  |