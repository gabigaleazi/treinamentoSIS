*** Settings ***
Documentation    Aqui estarão presentes os exercícios do treinamento SIS.

*** Variables ***
&{Pessoa}       Nome=Gabriele    Idade=23 anos    Profissão=Analista de Testes    Empresa=SIS    Nacionalidade=Brasileira    RG=552447110
@{Celulares}    iPhone           Sansumg          Motorola                        LG             Xiaomi
&{Notas}        B1=10            B2=5             B3=8
@{Notas2}       9                6                5

*** Test Cases ***
Crie uma variável do Tipo Dicionário que conterá dados de uma pessoa, com no mínimo 6 informações e imprima o dicionário completo.
    Log to console    ${Pessoa}
    Log               ${Pessoa}


Crie uma variável do Tipo Dicionário que conterá dados de uma pessoa, com no mínimo 6 informações e imprima no console, uma informação por vez.
    Log to console    ${Pessoa.Nome}
    Log               ${Pessoa.Nome}


Crie uma variável do Tipo Lista de 05 marcas de celular e imprima no console a lista completa
    Log to console    ${Celulares}
    Log               ${Celulares}


Crie uma variável do Tipo Lista de 05 marcas de celular e imprima no console, uma por vez.
    Log to console    ${Celulares[0]}
    Log               ${Celulares[0]}


Crie uma variável do Tipo Dicionário que conterá 3 notas de um aluno, realize e imprima no console o cálculo da média do aluno.
    ${Media}=           evaluate    (${Notas.B1}+${Notas.B2}+${Notas.B3})/3
    Log         ${Media}


Crie uma variável do Tipo Lista que conterá 3 notas de um aluno, realize e imprima no console o cálculo da média do aluno.
    ${Media2}=             evaluate    (${Notas2[0]}+${Notas2[1]}+${Notas2[2]})/3
    Log         ${Media2}