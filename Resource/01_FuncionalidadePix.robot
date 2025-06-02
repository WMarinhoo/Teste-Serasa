*** Settings ***
Resource                ../TestCase/01_FuncionalidadePix.robot
Resource                ../Utils/Libraries/Utils.robot

*** Variables ***

${TELA_SERASA}                                    https://www.serasa.com.br/limpa-nome-online/
${BOTAO_ENTRAR}                                   //a[contains(@class,'ea-button ea-button--ghost ht-cta')] 

${TIMEOUT}                                        5000ms


*** Keywords ***

Dado que esteja no Portal "SERASA"
    Open Browser            ${TELA_SERASA}        chrome 
    Maximize Browser Window

E Clicar no botão "${NOME_BOTAO}"
    ${NOME_BOTAO}=    Gera Frase Em String                               ${NOME_BOTAO}
    Wait Until Element Is Visible                                        ${BOTAO_${NOME_BOTAO}}                           ${TIMEOUT}              
    Click Element                                                        ${BOTAO_${NOME_BOTAO}}


