# Teste Automatizado com o Robot Framework

REQUISITOS: Implementado apenas no Windows, para o browser Chrome.

Primeiramente precisa ter o Python instalado, para ver um passo a passo de como instalar o Python no Windows, clique no link abaixo: 
https://github.com/dener-barranco/Teste-Automatizado/blob/965e0e0e03cde7ec67d819909d321fc5f27e849a/Instala%C3%A7%C3%A3o%20do%20Python.pdf


### INSTALANDO O ROBOT FRAMEWORK

Abrir o CMD (Console do seu computador) e executar o comando: pip install robotframework
Este comando instala a versão mais recente do Robot.

<img src="https://github.com/dener-barranco/Teste-Automatizado/blob/212537d0c7a74ac1ce2993701ce59152d104180b/InstalacaoRobot.jpg">

Para verificar se realmente foi instalado: robot --version

<img src="https://github.com/dener-barranco/Teste-Automatizado/blob/212537d0c7a74ac1ce2993701ce59152d104180b/VersaoRobot.jpg">


### INSTALANDO A BIBLIOTECA DO SELENIUM

É esta biblioteca que vai permitir rodar no browser o script desenvolvido para web.
No CMD executar o comando: pip install robotframework-seleniumlibrary

<img src="https://github.com/dener-barranco/Teste-Automatizado/blob/212537d0c7a74ac1ce2993701ce59152d104180b/selenium.jpg">


### CHROMEDRIVER

Para executar o script de teste automatizado do Robot no navegador Chrome, é necessário que o Chromedriver esteja na pasta de instalação do Python. 

Para baixar o chromedriver e colocar ele dentro da pasta Scripts do python.

Verificar a versão do navegador chrome em: Configurações > Ajuda > Acerca do Google Chrome.

<img src="https://github.com/dener-barranco/Teste-Automatizado/blob/212537d0c7a74ac1ce2993701ce59152d104180b/chrome.jpg">


Nesse link baixar a versão correspondente ao do Chrome: https://sites.google.com/a/chromium.org/chromedriver/downloads

<img src="https://github.com/dener-barranco/Teste-Automatizado/blob/212537d0c7a74ac1ce2993701ce59152d104180b/chromedriver.jpg">

Após baixar, extrair o arquivo e colocar dentro da pasta Scripts da instalação do python: C:\Python38\Scripts


### EXECUÇÃO DO SCRIPT DE TESTE AUTOMATIZADO

Ao baixar o projeto do GitHub e descompactar, o arquivo: testeAutomacao.robot é o nosso script pronto de teste automatizado.

Para executá lo basta abrir o CMD no no local em que o arquivo foi extraído e digitar o comando: robot testeAutomacao.robot

Aguarde alguns segundos e veja o seu browser sendo aberto o as validações sendo executadas. 

Ao terminar as validações o browser é fechado. Mais é possível consultar todo o processo executado na documentação que é gerada na pasta onde foi executado o arquivo é gerado o “report”.

REPORT contém todo o passa a passo das validações que foram executadas com detalhes. Está em anexo no arquivo: “Logs da Execução.rar”.



