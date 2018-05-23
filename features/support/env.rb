require 'appium_lib'
require 'pry'


#1- Saber quais caps queremos na nossa sessao (appium.txt)
caps_path = File.join(File.dirname(__FILE__), '..','..','appium.txt')
caps = Appium.load_appium_txt  file: caps_path, verbose: true

#2- Criar um cliente e usar as caps
Appium::Driver.new caps, true

class AppiumWorld
end

Appium.promote_appium_methods AppiumWorld

World do 
    AppiumWorld.new
end

#3- Iniciar a sessao 
Before{ $driver.start_driver }

#4- Fechar a sessao
After { $driver.driver_quit }