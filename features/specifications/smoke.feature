#language: pt
Funcionalidade: Cenarios importantes para revisar


Contexto:
Dado eu sou uma pessoa querendo buscar um produto

Cenário: Cliente nao e maior de idade
  Quando eu nao tenho 18 anos
  Então vejo informacoes de "Consumo inteligente - Ambev"


Cenário: Cliente compra sem cadastro
    Quando eu tenho 18 anos
    E escolho meu endereco
    E termino de escolher meu produto
    Entao posso acessar meu cadastro


Cenário: Cliente compra com cadastro
    Quando eu tenho 18 anos
    E acesso minha conta
    E peco para entregar no trabalho o produto
    Entao escolher a forma de pagamento  