*** Settings ***
Documentation    Aqui estarão presentes os exercícios do treinamento SIS.

*** Variables ***
@{Numeros}    1    2    3    4    5    6    7    8    9    10

*** Keywords ***
Verificar maioridade
    [Arguments]       ${Idade}
    IF                '${Idade}' >= '18'
    Log to console    Maior de idade
    END

Identificar numero 5
    FOR               ${count}             IN    @{Numeros}
    IF                '${count}' == '5'
    Log to console    ${count}.Sucesso!
    END
    END

*** Test Cases ***
1 - Crie uma keyword que imprima no console as condições: Caso a idade seja maior ou igual a 18 anos = Maior de idade
    Verificar maioridade    23

2 - Crie uma keyword que imprima “sucesso” no console quando encontrar o número 5 em uma lista.
    Identificar numero 5