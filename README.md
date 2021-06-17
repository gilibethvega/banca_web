# README

Historias de usuario pueden consultarse en 

https://trello.com/b/ItXluoIG/bancafriendlyweb

Banca Friendly

![bancapro2](https://user-images.githubusercontent.com/70213375/122314747-c520e780-cee6-11eb-8820-5a248eb2eb25.png)



Nuestro proyecto que puede visitarse en https://safe-ridge-83589.herokuapp.com/ o https://bancafriendly.cl, esta ennfocado en ofrecer productos financieros a clientes según su perfil financiero. 

Comenzando 🚀

Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas.

Pre-requisitos 📋
- Sistema linux, Mac o Subsistema linux de Windows
- VsCode

Instalaciones necesarias antes de copiar el proyecto 🛠️

- Rails 5.2.1
- Ruby '2.6.0'
- PostgreSQL >10
- Heroku

Abriendo el proyecto en su pc 🔧

- Ir a https://github.com/gilibethvega/banca_web
- En rama master, copiar código SSH
- Ir a terminal, posicionarse en carpeta donde queremos copiar el proyecto. Escribir *git clone + codigo SSH-copiado en paso anterior
- Ingresar cd bancaweb/
- Escribir code . y presionar enter.
- Se abrirá el proyecto en su vscode o editor de texto favorito.
- Deberá correr el comando *rail db:migrate*
- Posterior a que se corran las migraciones deberá ingresar *rails db:seed
- Correr *rails s* y al visitar http://localhost:3000/ podrá ver el proyecto en desarrollo


Despliegue 📦

Para el despliegue se recomienda lo siguiente:
- Crear una rama desde la rama master, agregar los cambios necesarios.
- Probar en el ambiente de desarrollo que no se haya caído nada (de momento no tenemos test)
- Commitear cambios y despues hacer push a la rama.
- Ingresar *git checkout master* y luego merguear la rama con *git merge nombre-nueva-rama*
- Una vez situados en master correr el servidor y verificar nuevamente que ningún servicio se haya visto afectado.
- Debe cofigurarse la variable de entorno para envío de mail con *heroku config:set Sparkpost_API_KEY='escribe-tu-API-KEY' 
- Posteriormente hacer un *git push origin master*.(Esto debería ser suficiente para desplegar en producción ya que heroku esta integrado con github, no obstante por problemas técnicos esta conexión esta suspendida, por lo que se requiere un *git push heroku master. 

Construido con las siguientes gemas 🛠

#devise
gem 'devise'
#faker
gem 'faker'
#jquery
gem 'jquery-rails'
#variables de entorno
gem 'dotenv-rails'
#mail
gem 'sparkpost_rails'
#graficos
gem'chartkick'
gem 'groupdate'
#errores
gem 'rollbar'

Servicio de reporte de errores 🖇️

Rollbar, puede consultarse en
https://rollbar.com/safe-ridge-83589/safe-ridge-83589/

![imagen](https://user-images.githubusercontent.com/70213375/122314226-c30a5900-cee5-11eb-888e-9e272b78fce7.png)


Este proyecto está bajo la Licencia bancafriendly 📢

