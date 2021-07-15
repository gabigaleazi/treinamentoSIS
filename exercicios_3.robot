*** Settings ***
Documentation    Aqui estarão presentes os exercícios do treinamento SIS.

*** Variables ***
@{Frutas}    Maça    Melancia    Manga    Morango

*** Keywords ***
Contar de 0 a 10
    FOR               ${count}    IN RANGE    0    11
    Log to console    ${count}
    END

Contar ate numero maximo
    [Arguments]       ${VALOR}
    FOR               ${count}    IN RANGE    0    ${VALOR}
    Log to console    ${count}
    END

Lista
    [Arguments]       @{Frutas}
    FOR               ${Fruta}     IN    @{Frutas}
    Log to console    ${Fruta}
    END

*** Test Cases ***
1 - Crie uma keyword que imprima no console uma lista de números de 0 a 10 utilizando estrutura de repetição
    Contar de 0 a 10

2 - Crie uma keyword que imprima no console uma lista de números em formato crescente, baseado em um argumento recebido com o número máximo de iterações.
    Contar ate numero maximo    51

3 - Crie uma keyword que imprime no console uma lista recebida por argumento.
    Lista    @{Frutas}