Funcionalidade: Configurar produto

  Contexto:
    Dado que o usuário está na página de detalhes do produto

  Cenário: Configurar produto com todos os dados obrigatórios
    Quando o usuário seleciona a cor
    E seleciona o tamanho
    E seleciona a quantidade
    Então o produto deve estar pronto para ser adicionado ao carrinho

  Cenário: Tentar configurar produto sem selecionar todos os campos
    Quando o usuário não seleciona cor ou tamanho ou quantidade
    Então o sistema deve exibir uma mensagem informando que todos os campos são obrigatórios

  Esquema do Cenário: Configurar quantidade de produtos dentro do limite permitido
    Quando o usuário seleciona a quantidade <quantidade>
    Então o sistema deve <resultado> a configuração do produto
    Exemplos:
      | quantidade | resultado |
      | 1          | permitir  |
      | 5          | permitir  |
      | 10         | permitir  |
      | 11         | bloquear  |

  Cenário: Limpar configurações do produto
    Dado o usuário já configurou cor, tamanho e quantidade
    Quando o usuário clica no botão "limpar"
    Então o sistema deve voltar ao estado original