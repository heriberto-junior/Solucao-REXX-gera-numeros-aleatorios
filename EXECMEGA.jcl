//EXECMEGA JOB CLASS=L,MSGCLASS=X,NOTIFY=&SYSUID,                  
//             REGION=2M,TIME=500                                  
//*---------------------------------------------------------------*
//* PARM = PROG + QTD DE EXECUCOES                                *
//*---------------------------------------------------------------*
//MEGA     EXEC PGM=IKJEFT01,PARM='MEGASENA 4',COND=(4,LT)         
//SYSPROC  DD DSN=USUARIO.LIB.REXX,DISP=SHR                        
//SYSTSPRT DD SYSOUT=*                                             
//SYSPRINT DD SYSOUT=*                                             
//SYSTSIN  DD *                                                    
