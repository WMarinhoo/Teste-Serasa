*** Settings ***

Resource                ../Resource/01_FuncionalidadePix.robot
Test Teardown           Close Browser
Library    SeleniumLibrary

*** Test Cases ***

Cenário 01: Exibição dos métodos de pagamento (PIX e Boleto)


Cenário 02: Escolha de parcelamento com opção (PIX habilitada)

Cenário 03: Exibição das datas de vencimento

Cenário 04: Fechamento de acordo com PIX à vista

Cenário 05: Fechamento de acordo com PIX parcelado

Cenário 06: Cópia da chave PIX + instruções de pagamento

Cenário 07: Envio de chave PIX por webhook de pagamento recebido

Cenário 08: Atualização do status para “Pago” no histórico

Cenário 09: Notificação ao consumidor (e-mail e in-app)

Cenário 10: Visualização no histórico com status atualizado

Cenário 11: Tentativa de pagamento com chave inválida

Cenário 12: Garantia de que boleto ainda está disponível
