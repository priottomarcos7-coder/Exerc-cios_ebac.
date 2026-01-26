#language: pt

Funcionalidade: Tela de Login
Como aluno do portal EBAC
Quero me autenticar
Para visualizar minhas notas

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Autenticação válida
Quando eu digita o usuário "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá João"

Cenário: Usuário inexistente
Quando eu digita o usuário "xxxyyyzzz@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digita o usuário "joao@ebac.com.br"
E a senha "abcde"
Então deve exibir uma mensagem de alerta "Usuário ou Senha inválida"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar o <usuario>
E a senha <senha>
Então deve exibir a <mensagem> de sucesso

  Exemplos:
    | usuario                 | senha        | mensagem                     |
    |"joao@ebac.com.br"       | "senha@123"  | "Olá João"                   | 
    |"maria@ebac.com.br"      | "senha@123" | "Olá Maria"                 | 
    |"jose@ebac.com.br"       | "senha@123"  | "Olá José"                   | 