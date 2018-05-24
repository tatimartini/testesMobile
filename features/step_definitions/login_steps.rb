Dado("que eu toque no botão Iniciar") do
    @base = BaseScreen.new
    @base.tocar_no_botao('bt_iniciar')
end

E("tenho acesso a tela de Login") do 
    @base.verificar_se_estou_na_screen('content')
end

Dado("que tenho os seguintes dados:") do |table|
    @login = table.rows_hash
end

E("preencho os campos") do
    @base.buscar_preencher('nome', @login['nome'])
    @base.buscar_preencher('email', @login['email'])
    @base.buscar_preencher('senha', @login['senha'])

    @base.tocar_no_botao('bt_logar')
end

Então("sou redirecionado para a tela de boas vindas") do
    @base.verificar_se_estou_na_screen('bemvindo')
end

Então("devo ver a mensagem: {string}") do |string|
    @base.buscar_elemento('txtLoginIncorreto')
end