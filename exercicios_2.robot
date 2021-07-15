*** Settings ***
Documentation    Aqui estarão presentes os exercícios do treinamento SIS.

*** Keywords ***
Somar numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${VALOR}        evaluate    ${NUM_A}+${NUM_B}
    [Return]       ${VALOR}

Subtrair numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${VALOR}        evaluate    ${NUM_A}-${NUM_B}
    [Return]       ${VALOR}

Dividir numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${VALOR}        evaluate    ${NUM_A}/${NUM_B}
    [Return]       ${VALOR}

Multiplicar numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${VALOR}        evaluate    ${NUM_A}*${NUM_B}
    [Return]       ${VALOR}

Email
    [Arguments]    ${NOME}   
    Set test variable    ${VALOR}       ${NOME}@emai.com.br
    [Return]       ${VALOR}

*** Test Cases ***
1 - Criar 4 Keywords de cálculo utilizando argumentos embutidos. Cada keyword deve imprimir no console o resultado da operação. Operações: soma, subtração, divisão e multiplicação.
    ${RESULTADO}      Somar numeros    50    78
    Log to console    ${RESULTADO}

    ${RESULTADO}      Subtrair numeros    155    48
    Log to console    ${RESULTADO}

    ${RESULTADO}      Dividir numeros    180    8
    Log to console    ${RESULTADO}

    ${RESULTADO}      Multiplicar numeros    50    45
    Log to console    ${RESULTADO}

2 - Criar uma keyword que receba um nome e retorne o padrão nome@email.com.br
    ${RESULTADO}      Email           gabigaleazi
    Log to console    ${RESULTADO}
