/* REXX */                                                              
                                                                        
PARSE UPPER ARG N                                                       
                                                                        
/* SE NAO PASSAR N, ASSUME 1 */                                         
IF N = '' THEN N = 1                                                    
                                                                        
/* VALIDACAO SIMPLES */                                                 
IF DATATYPE(N) <> 'NUM' THEN DO                                         
   SAY 'ERRO: INFORME UM NUMERO INTEIRO.'                               
   EXIT 8                                                               
END                                                                     
                                                                        
N = TRUNC(N)              /* GARANTE INTEIRO */                         
IF N < 1 THEN N = 1                                                     
                                                                        
CALL RANDOM ,,             /* INICIALIZA GERADOR UMA VEZ */             
                                                                        
DO APOSTA = 1 TO N                                                      
   NUMS  = GEN_UNIQUE(5, 1, 50)                                         
   STARS = GEN_UNIQUE(2, 1, 12)                                         
                                                                        
   NUMS  = SORT_NUMS(NUMS)                                              
   STARS = SORT_NUMS(STARS)                                             
                                                                        
   NUMS_FMT  = FMT_LIST(NUMS,  2)                                       
   STARS_FMT = FMT_LIST(STARS, 2)                                       
                                                                        
   SAY 'EURO: 'NUMS_FMT '+' STARS_FMT                                   
END                                                                     
                                                                        
EXIT 0                                                                  
                                                                        
                                                                        
/* ===== GERA QTD NUMEROS UNICOS NO INTERVALO [MIN..MAX] ===== */       
GEN_UNIQUE:                                                             
   PARSE ARG QTD, MIN, MAX                                              
   LISTA = ''                                                           
                                                                        
   DO WHILE WORDS(LISTA) < QTD                                          
      X = RANDOM(MIN, MAX)                                              
      IF WORDPOS(X, LISTA) = 0 THEN                                     
         LISTA = LISTA X                                                
   END                                                                  
                                                                        
RETURN STRIP(LISTA)                                                     
                                                                        
/* ===== ORDENA LISTA NUMERICA (SELECTION SORT EM STEM) ===== */        
SORT_NUMS:                                                              
   PARSE ARG LISTA                                                      
   TOTAL = WORDS(LISTA)                                                 
   IF TOTAL <= 1 THEN RETURN STRIP(LISTA)                               
                                                                        
   /* CARREGA EM UM STEM */                                             
   DO I = 1 TO TOTAL                                                    
      A.I = WORD(LISTA, I)                                              
   END                                                                  
                                                                        
   /* SELECTION SORT NUMERICO */                                        
   DO I = 1 TO TOTAL - 1                                                
      MIN = I                                                           
      DO J = I + 1 TO TOTAL                                             
         IF A.J < A.MIN THEN MIN = J                                    
      END                                                               
                                                                        
      IF MIN <> I THEN DO                                               
         TMP   = A.I                                                    
         A.I   = A.MIN                                                  
         A.MIN = TMP                                                    
      END                                                               
   END                                                                  
                                                                        
      /* RECONSTROI A LISTA */                                          
      OUT = ''                                                          
      DO I = 1 TO TOTAL                                                 
         OUT = OUT A.I                                                  
      END                                                               
                                                                        
   RETURN STRIP(OUT)                                                    
                                                                        
/* ===== FORMATA LISTA COM ZEROS A ESQUERDA (WIDTH DIGITOS) ===== */    
FMT_LIST:                                                               
   PARSE ARG LISTA, WIDTH                                               
   OUT = ''                                                             
                                                                        
   DO K = 1 TO WORDS(LISTA)                                             
      X = WORD(LISTA, K)                                                
      OUT = OUT RIGHT(X, WIDTH, '0')                                    
   END                                                                  
                                                                        
RETURN STRIP(OUT)                                                       
