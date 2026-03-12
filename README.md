## Solucao-REXX-gera-numeros-aleatorios

### Visão geral do job
O job gera sequência de números aleatórios para serem usados tanto para Euromilhões (Portugal) quanto para a Mega Sena (Brasil) ao seguir os seguintes passos:

**1 - Selecionar o job a ser executado (EXECEURO ou EXECMEGA);**  
**2 - Setar no PARM a quantidade de execuções;**  
**3 - Executar e ver o resultado na sysout.**  

---

### Etapa 1 — JCL: Execução e análise de resultado
O STEP 1 do JCL selecionado executa os programas REXX EUROMILH ou MEGASENA onde o resultado pode ser visto na spool. Para isso, antes da execução é necessário setar no PARM logo em seguida ao nome do programa com o número da quantidade de números a serem exibidos. O resultado é exibido em uma sequência de números clássica, tendo a Euromilhões números 5 números de 1 a 50 + 2 números de 1 a 12. Já na Mega Sena o resultado são sequências de 6 números de 1 a 60.

---

### Etapa 2 — REXX: geração de sequências
O REXX ao receber o parâmetro de quantidade valida se é um número inteiro, chama a rotina externa `RANDOM ,,` que chama a função RANDOM (não nativa do REXX) para gerar valores aleatórios. Com isso ele gera 3 funções:

**1 - Função para gerar uma lista com números únicos em um intervalo selecionado de acordo com a rotina selecionada número contendo mínimo e máximo;**  
**2 - Função para ordenar os números selecionados;**  
**3 - Função para gerar zero à esquerda para manter um nível de formatação.**  
