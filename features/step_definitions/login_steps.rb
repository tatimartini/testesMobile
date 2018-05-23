E("tenho acesso a tela de Login") do    
    @base = BaseScreen.new
    @base.verificar_se_estou_na_screen('content')
end

Dado("que eu toque no botão Iniciar") do
    @base = BaseScreen.new
    @base.tocar_no_botao('bt_iniciar')
end

Dado("que tenho os seguintes dados:") do |table|
    @login = table.rows_hash
end

E("preencho os campos") do
    nome = find_element(:id,'nome')
    nome.send_keys(@login['nome'])

    email = find_element(:id,'email')
    email.send_keys(@login['email'])

    senha = find_element(:id,'senha')
    senha.send_keys(@login['senha'])
    #sleep(1)
    #$driver.back
    @base = BaseScreen.new
    @base.tocar_no_botao('bt_logar')
end

Então("sou redirecionado para a tela de boas vindas") do
    @base = BaseScreen.new
    @base.verificar_se_estou_na_screen('bemvindo')
end

Então("devo ver a mensagem: {string}") do |string|
    msg = find_element(:id, 'txtLoginIncorreto')
    #puts msg.text
end