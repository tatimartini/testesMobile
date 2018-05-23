class BaseScreen
    def verificar_se_estou_na_screen(screen)
        $driver.wait_true(5){ $driver.exists { $driver.find_element(:id, screen)}}
    end

    def tocar_no_botao(id)
        iniciar = $driver.find_element(:id, id)
        iniciar.click
    end
end