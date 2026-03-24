## [ENG] Solucao-REXX-gera-numeros-aleatorios

### Job Overview
The job generates sequences of random numbers to be used for both Euromillions (Portugal) and Mega Sena (Brazil) by following these steps:

**1 - Select the job to be executed (EXECEURO or EXECMEGA);**  
**2 - Set the number of executions in the PARM;**  
**3 - Execute and view the result in the sysout.**  

---

### Step 1 — JCL: Execution and result analysis
STEP 1 of the selected JCL executes the REXX programs `EUROMILH` or `MEGASENA`, and the result can be viewed in the spool. Before execution, the quantity must be set in the PARM immediately after the program name, indicating how many number sequences should be displayed. The result is shown as a classic number sequence: Euromillions produces 5 numbers from 1 to 50 + 2 numbers from 1 to 12, while Mega Sena produces sequences of 6 numbers from 1 to 60.

---

### Step 2 — REXX: Sequence generation
Upon receiving the quantity parameter, the REXX validates that it is an integer, then calls the external routine `RANDOM ,,`, which invokes the RANDOM function (not native to REXX) to generate random values. From this, it builds three functions:

**1 - A function to generate a list of unique numbers within a selected range, defined by the minimum and maximum of the chosen routine;**  
**2 - A function to sort the selected numbers;**  
**3 - A function to add leading zeros to maintain consistent formatting.**  

---

### Step 3 — Result
The result can be viewed in the spool under `SYSTSPRT` of the JOB. When executed with the number 4 in the PARM (displaying 4 sequences), the output should look similar to the following:

**Euromillions:**  
EURO: 01 17 41 42 47 + 03 06  
EURO: 01 06 29 47 50 + 05 09  
EURO: 18 19 24 37 42 + 01 02  
EURO: 01 30 36 38 42 + 02 12  

**Mega Sena:**  
MEGA: 01 02 16 29 35 53  
MEGA: 13 23 43 45 48 54  
MEGA: 15 25 30 42 52 59  
MEGA: 04 14 35 43 49 51  

---
---

## [PT-BR] Solucao-REXX-gera-numeros-aleatorios

### Visão geral do job
O job gera sequência de números aleatórios para serem usados tanto para Euromilhões (Portugal) quanto para a Mega Sena (Brasil) ao seguir os seguintes passos:

**1 - Selecionar o job a ser executado (EXECEURO ou EXECMEGA);**  
**2 - Setar no PARM a quantidade de execuções;**  
**3 - Executar e ver o resultado na sysout.**  

---

### Etapa 1 — JCL: Execução e análise de resultado
O STEP 1 do JCL selecionado executa os programas REXX `EUROMILH` ou `MEGASENA` onde o resultado pode ser visto na spool. Para isso, antes da execução é necessário setar no PARM logo em seguida ao nome do programa com o número da quantidade de números a serem exibidos. O resultado é exibido em uma sequência de números clássica, tendo a Euromilhões números 5 números de 1 a 50 + 2 números de 1 a 12. Já na Mega Sena o resultado são sequências de 6 números de 1 a 60.

---

### Etapa 2 — REXX: geração de sequências
O REXX ao receber o parâmetro de quantidade valida se é um número inteiro, chama a rotina externa `RANDOM ,,` que chama a função RANDOM (não nativa do REXX) para gerar valores aleatórios. Com isso ele gera 3 funções:

**1 - Função para gerar uma lista com números únicos em um intervalo selecionado de acordo com a rotina selecionada número contendo mínimo e máximo;**  
**2 - Função para ordenar os números selecionados;**  
**3 - Função para gerar zero à esquerda para manter um nível de formatação.**  

---

### Etapa 3 — Resultado
O resultado pode ser visto na spool na `SYSTSPRT` do JOB e deverá ter uma sequência semelhante a essa abaixo quando executado com o número 4 no PARM (exibição de sequência de 4 números). Exemplo:
  
**Euromilhões:**  
EURO: 01 17 41 42 47 + 03 06  
EURO: 01 06 29 47 50 + 05 09  
EURO: 18 19 24 37 42 + 01 02  
EURO: 01 30 36 38 42 + 02 12  

**Mega Sena:**  
MEGA: 01 02 16 29 35 53  
MEGA: 13 23 43 45 48 54  
MEGA: 15 25 30 42 52 59  
MEGA: 04 14 35 43 49 51  
