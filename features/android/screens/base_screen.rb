class BaseScreen
    def verificar_se_estou_na_screen(screen)
        $driver.wait_true(5){ $driver.exists { $driver.find_element(:id, screen)}}
    end

    def tocar_no_botao(id)
        botao = $driver.find_element(:id, id)
        botao.click
    end

    def buscar_elemento(id)
        $driver.find_element(:id, id)
    end

    def buscar_preencher(id, text)
        item = $driver.find_element(:id, id)
        item.send_keys(text)
    end
end