*** Settings ***
Documentation   SerasaDoc    

Library     SeleniumLibrary     #Importando a biblioteca do Selenium, para utilizar seus recursos neste script;

*** Test Cases ***
Validação de acesso a página do Serasa
    Dado que acesso a página do Serasa
    Quando clico no botão ENTAR para acessar o login
    Entao sem preencher o CPF clico no botão CONFIRMAR
    E vejo o aviso de "Por favor preencha seu CPF."
    Entao digito um CPF inválido clico no botão CONFIRMAR
    E vejo o aviso "Você precisa informar um CPF válido."
    Entao digito um CPF válido clico no botão CONFIRMAR
    E me dirijo a proxima pagina onde tiro um print para confirmar que chegou até aqui
    Entao fecho o Browser

*** Keywords ***
Dado que acesso a página do Serasa
    Open Browser                    https://www.serasaconsumidor.com.br         Chrome      #Abre o link no navegador Chrome;
    Set Window Size                 1280    800     #Função para maximizar a janela do navegador, de acordo com o tamanho da sua tela;
    Set Selenium Implicit Wait      20   #Função que faz aguadar 6 segundos antes de executar todas as instruções;

Quando clico no botão ENTAR para acessar o login
    Click Element                   //button[@order='2']    #Click no botão "ENTRAR" da página inicial;

Entao sem preencher o CPF clico no botão CONFIRMAR
    Click Button                //button[@type='submit']    #Click no botão "CONFIRMAR";

E vejo o aviso de "${aviso_esperado_1}"
    Element Should Contain      class:_1fpPRNS1     ${aviso_esperado_1}     #Mensagem de retorno da ação acima;

Entao digito um CPF inválido clico no botão CONFIRMAR
    Input Text                  id:cpf      11133399977     #Preenchendo o campo "Didite seu CPF:" com o valor: 11133399977;
    Click Button                //button[@type='submit']    #Click no botão "CONFIRMAR";

E vejo o aviso "${aviso_esperado_2}"
    Element Should Contain      class:_1fpPRNS1     ${aviso_esperado_2}    #Mensagem de retorno da ação acima;

Entao digito um CPF válido clico no botão CONFIRMAR
    Input Text                  id:cpf      83132683019     #Preenchendo o campo "Didite seu CPF:" com o valor: 01234567890;
    Click Button                //button[@type='submit']    #Click no botão "CONFIRMAR";

E me dirijo a proxima pagina onde tiro um print para confirmar que chegou até aqui
    Sleep       5   #Aguarda 5 segundos antes de executar a proxima instrução;
    Capture Page Screenshot     #Tira uma foto/print da página antes de finalizar;

Entao fecho o Browser
    Close Browser   #Fecha o navegador.