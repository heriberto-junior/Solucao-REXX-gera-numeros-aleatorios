//EXECEURO JOB CLASS=L,MSGCLASS=X,NOTIFY=&SYSUID,                
//             REGION=2M,TIME=500                                  
//*---------------------------------------------------------------*
//* PARM = PROG + QTD DE EXECUCOES                                *
//*---------------------------------------------------------------*
//EURO     EXEC PGM=IKJEFT01,PARM='EUROMILH 4',COND=(4,LT)         
//SYSPROC  DD DSN=USUARIO.LIB.REXX,DISP=SHR                        
//SYSTSPRT DD SYSOUT=*                                             
//SYSPRINT DD SYSOUT=*                                             
//SYSTSIN  DD *                                                    
