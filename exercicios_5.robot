*** Settings ***
Documentation    Aqui estarão presentes os exercícios do treinamento SIS.

*** Variables ***
@{Numeros}    1    2    3    4    5    6    7    8    9    10

*** Keywords ***
Verificar maioridade
    [Arguments]       ${Idade}
    IF                '${Idade}' >= '18'
    Log to console    Maior de idade
    ELSE   
    Log to console    Menor de idade
    END

Verificar numeros impares e pares
    FOR               ${count}             IN    @{Numeros}
    ${VALOR}        evaluate    ${count}%2
    IF                '${VALOR}' == '0'
    Log to console    ${count} é número par
    ELSE   
    Log to console    ${count} é número impar
    END
    END

*** Test Cases ***
1 - Crie uma keyword que imprima no console as condições: Caso a idade seja maior ou igual a 18 anos = Maior de idade; Caso a idade seja menor que 18 anos = Menor de idade
    Verificar maioridade    23

2 - Crie uma keyword que receba uma lista de números e imprima no console se um número é par ou ímpar
    Verificar numeros impares e pares