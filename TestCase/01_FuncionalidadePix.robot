*** Settings ***

Documentation    Essa suíte testa o módulo da nova funcionalidade PIX Serasa Consumidor
Resource                ../Resource/01_FuncionalidadePix.robot
Test Teardown           Close Browser
Library    SeleniumLibrary

*** Test Cases ***

Cenário 01: Exibição dos métodos de pagamento (PIX e Boleto)
    [Documentation]    Exibição dos métodos de pagamento (PIX e Boleto).
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"

Cenário 02: Escolha de parcelamento com opção (PIX habilitada)
    [Documentation]    Escolha de parcelamento com opção (PIX habilitada).
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"

Cenário 03: Exibição das datas de vencimento
    [Documentation]    Exibição das datas de vencimento.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção Parcelas"

Cenário 04: Fechamento de acordo com PIX à vista
    [Documentation]    Fechamento de acordo com PIX à vista.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção AVista"

Cenário 05: Fechamento de acordo com PIX parcelado
    [Documentation]    Fechamento de acordo com PIX parcelado.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção Parcelas"
    E Clicar no botão "Fechar acordo"
    E mensagem de "Você Fechou Acordo" ser exibida

Cenário 06: Cópia da chave PIX + instruções de pagamento
    [Documentation]    Cópia da chave PIX + instruções de pagamento.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção AVista"
    E Clicar no botão "Copiar Código Pix"
    

Cenário 07: Envio de chave PIX por webhook de pagamento recebido
    [Documentation]    Envio de chave PIX por webhook de pagamento recebido.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção AVista"
    E Clicar no botão "Copiar Código Pix"
    E mensagem de "Pix enviado webook" ser exibida
    
Cenário 08: Atualização do status para “Pago” no histórico
    [Documentation]    Atualização do status para “Pago” no histórico.
    Dado que esteja no Portal "SERASA"
    E Clicar no botão "Entrar"
    E Inserir no campo "CPF" o valor "14248648792"
    E Clicar no botão "Continuar"                            
    E Inserir no campo "Senha" o valor "Gugu@2019"
    E Clicar no botão "Continuar" 
    E Clicar no botão "Negociar Dívidas"
    E Clicar no botão "Ver Carrinho"
    E Clicar no botão "Continuar Carrinho"
    E Clicar no botão "Opção PIX"
    E Clicar no botão "Opção Parcelas"
    E Clicar no botão "Detalhes Parcela"
    E Clicar no botão "Abrir Detalhe Parcela"
    E mensagem de "Situação Parcelas" ser exibida

