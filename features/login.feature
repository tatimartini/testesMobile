#language: pt

Funcionalidade: Login no aplicativo

Cenário: Efetuar login com sucesso
    Dado que eu toque no botão Iniciar 
    E tenho acesso a tela de Login
    Dado que tenho os seguintes dados:
        | nome  | Tatiana       |
        | email | teste@brq.com |
        | senha | 123           |
    E preencho os campos
    Então sou redirecionado para a tela de boas vindas

Cenário: Efetuar login com erro
    Dado que eu toque no botão Iniciar 
    E tenho acesso a tela de Login
    Dado que tenho os seguintes dados:
        | nome  | Tatiana       |
        | email | teste@brq.com |
        | senha | 1234          |
    E preencho os campos
    Então devo ver a mensagem: "Usuário incorreto, tente novamente!"



    