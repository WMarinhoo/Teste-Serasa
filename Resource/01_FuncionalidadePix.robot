*** Settings ***
Resource                ../TestCase/01_FuncionalidadePix.robot
Resource                ../Utils/Libraries/Utils.robot

*** Variables ***

#URL TELA
${TELA_SERASA}                                                            https://www.serasa.com.br/limpa-nome-online/

#BOTÕES
${BOTAO_ENTRAR}                                                           //a[contains(@class,'ea-button ea-button--ghost ht-cta')] 
${BOTAO_CONTINUAR}                                                        //button[@type='submit'][contains(.,'Continuar')]
${BOTAO_NEGOCIAR_DIVIDAS}                                                 //div[contains(@class,'jsx-c19eff7efe344a10 main-content --with-backbar')]                          
${BOTAO_VER_CARRINHO}                                                     //a[contains(@class,'ea-button ea-button--solid ea-button--size-lg eu-w-100 m-t-2')]
${BOTAO_CONTINUAR_CARRINHO}                                               //a[contains(@class,'ea-button ea-button--solid ea-button--size-lg eu-w-100 m-t-1')]
${BOTAO_OPCAO_PIX}                                                        //a[contains(.,'PixRecomendadoÀ vista ou parceladoConfirmação de pagamento na hora')]
${BOTAO_OPCAO_PARCELAS}                                                   //button[@aria-label='À vista por R$ 352,95.'][contains(.,'À vista por R$ 352,95')]
${BOTAO_OPCAO_AVISTA}                                                     //button[@aria-label='À vista por R$ 352,95.'][contains(.,'À vista por R$ 352,95')]
${BOTAO_FECHAR_ACORDO}                                                    //button[@type='submit'][contains(.,'Fechar acordo')]
${BOTAO_COPIAR_CODIGO_PIX}                                                //button[@type='button'][contains(.,'Copiar código Pix')]
${BOTAO_DETALHES_PARCELA}                                                 //a[@class='ea-button ea-button--ghost']
${BOTAO_ABRIR_DETALHE_PARCELA}                                            //button[@type='button'][contains(.,'106/06/2025R$ 291,11')]

#CAMPOS
${CAMPO_CPF}                                                              id=f-cpf                                                  
${CAMPO_SENHA}                                                            id=current-password

#TEMPO DE ESPERA
${TIMEOUT}                                                                5000ms

#MENSAGENS DE RETORNO
${MENSAGEM_VOCÊ_FECHOU_ACORDO}                                            //h2[@align='center'][contains(.,'Você fechou 3 novos acordos!')]
${MENSAGEM_SITUACAO_PARCELAS}                                             //div[@class='jsx-ab5d0da325ef9722 accordion__value eu-flex --align-right ea-typography ea-typography--emphasys ea-typography--body-m et-text-dark-medium'][contains(.,'Em aberto')]                          

*** Keywords ***

Dado que esteja no Portal "SERASA"
    Open Browser                                                          ${TELA_SERASA}                                    chrome 
    Maximize Browser Window

E Clicar no botão "${NOME_BOTAO}"
    ${NOME_BOTAO}=    Gera Frase Em String                                ${NOME_BOTAO}
    Wait Until Element Is Visible                                         ${BOTAO_${NOME_BOTAO}}                            ${TIMEOUT}              
    Click Element                                                         ${BOTAO_${NOME_BOTAO}}

E Inserir no campo "${CAMPO}" o valor "${VALOR}"
    ${CAMPO}=    Gera Frase Em String                                     ${CAMPO}
    Wait Until Element Is Visible                                         ${CAMPO_${CAMPO}}                                 ${TIMEOUT}
    Input Text                                                            ${CAMPO_${CAMPO}}                                 ${VALOR}

E mensagem de "${MENSAGEM}" ser exibida
    ${MENSAGEM}=   Gera frase em String                                   ${MENSAGEM}
    Wait Until Element Is Visible                                         ${MENSAGEM_${MENSAGEM}}                           ${TIMEOUT}          
    Element Should Be Visible                                             ${MENSAGEM_${MENSAGEM}}