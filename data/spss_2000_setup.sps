*-------------------------------------------------------------------------* 
 |             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 3496             | 
 |                                                                        | 
 |             MONITORING OF FEDERAL CRIMINAL SENTENCES, 2000             | 
 |                                                                        | 
 |                       PART 1: MAIN DATA FILE                           | 
 |                                                                        | 
 |                                                                        | 
 | This SPSS setup file contains the following statements:                | 
 |                                                                        | 
 | DATA LIST:  Specifies the input data file to be read and assigns the   | 
 | name, type, decimal specification (if any), and identifies variable    | 
 | beginning and ending column locations. Users must replace              | 
 | "file-specification" with a complete statement of the location of the  | 
 | data file.                                                             | 
 |                                                                        | 
 | VARIABLE LABELS:  Assigns descriptive labels to variables. Variable    | 
 | labels and variable names may be identical for certain variables.      | 
 |                                                                        | 
 | VALUE LABELS:  Assigns descriptive labels to codes in the data file.   | 
 | Value labels may not be present for all variables in the data file.    | 
 |                                                                        | 
 | NOTE:  Users should modify this SPSS setup to suit their specific      | 
 | needs. MISSING VALUES and MISSING VALUE RECODE sections have been      | 
 | marked by SPSS comment statements. To include these sections in a      | 
 | final SPSS setup, users should remove the SPSS comment statements from | 
 | the desired section(s).                                                | 
 *-------------------------------------------------------------------------.
                                                                            
* SPSS FILE HANDLE, DATA LIST COMMANDS.                                     
                                                                            
FILE HANDLE DATA / NAME="file-specification" LRECL=1300.                    
DATA LIST FILE=DATA /                                                       
   ABERTXT 1-52 (A)         REASTXT1 53-150 (A)      REASTXT2 151-243 (A)   
   REASTXT3 244-339 (A)     USSCIDN 340-345          DEPART 346-346         
   DISPOSIT 347-347         DSJANDC 348-348          ACCTRESP 349-350       
   TYPEOTHS 351-352         DSPLEA 353-353           POOFFICE 354-354 (A)   
   MONOFFTP 355-356         PROBATN 357-359          ACCGDLN 360-360        
   DSPSR 361-361            RESNTDOC 362-363         SCRNOUT 364-364        
   SENTDATE 365-372         FINE 373-382             TOTREST 383-392        
   COSTSUP 393-402          DISTRICT 403-404         DSSOR 405-405          
   RECDATE 406-413          AMENDYR 414-417          ACCAP 418-418          
   CAROFFAP 419-419         CITWHERE 420-422         MOCOMCON 423-424       
   HRCOMSRV 425-428         CITIZEN 429-429          NUMDEPEN 430-431       
   DEFENNUM 432-433         DEFCONSL 434-435         EDUCATN 436-437        
   ENCRYPT1 438-438         ENCRYPT2 439-439         FINEWAIV 440-440       
   MOHOMDET 441-442         HISPORIG 443-443         MOINTCON 444-445       
   SOURCES 446-446          MARRIED 447-447          COADJLEV 448-449       
   TOTUNIT 450-453 (2)      PRESENT 454-454          CRIMHIST 455-455       
   TOTDAYS 456-457          TOTPRISN 458-460         XCRHISSR 461-461       
   TOTCHPTS 462-463         XMAXSOR 464-466          XMINSOR 467-469        
   XFOLSOR 470-471          STATMAX 472-475          STATMIN 476-479        
   SPECASSM 480-484         SUPREL 485-487           ACCCAT 488-488         
   MONRACE 489-489          DOB 490-497              MONSEX 498-498         
   DSIND 499-499            DSAPPEAL 500-500         ABERCASE 501-501       
   POINT1 502-502           POINT2 503-504           POINT3 505-506         
   SENTPTS 507-507          REL2PTS 508-508          VIOL1PTS 509-509       
   CAROFFLV 510-511         CRIMLIV 512-513          ACCOFFLV 514-515       
   REASON1 516-518          REASON2 519-521          REASON3 522-524        
   NOCOMP 525-526           GDSTATHI 527-532 (A)     GDLINEHI 533-538 (A)   
   ADJOFLHI 539-540         BASEHI 541-542           ADJ_BHI 543-544        
   ADJ_CHI 545-547          ADJ_DHI 548-549          ADJ_EHI 550-551        
   ADJ_FHI 552-553          ADJ_GHI 554-555          ADJ_HHI 556-556        
   ADJ_IHI 557-557          ABUSHI 558-558           AGGROLHI 559-559       
   BASADJHI 560-562         FLIGHTHI 563-563         LOSSHI 564-573         
   MITROLHI 574-575         OBSTRCHI 576-577         OFFVCTHI 578-578       
   RSTRVCHI 579-579         TERORHI 580-581          USKIDHI 582-582        
   VULVCTHI 583-583         VCTADJHI 584-584         ROLADJHI 585-585       
   GDREFHI 586-591 (A)      BASERHI 592-593          ADJR_BHI 594-595       
   ADJR_CHI 596-597         ADJR_DHI 598-599         ADJR_EHI 600-601       
   ADJR_FHI 602-603         ADJR_GHI 604-605         ADJR_HHI 606-606       
   ADJR_IHI 607-607         ABUSRHI 608-608          AGGRLRHI 609-609       
   BASADRHI 610-610         FLGHTRHI 611-611         LOSSRHI 612-621        
   MITRLRHI 622-623         OBSTRRHI 624-624         OFFVCRHI 625-625       
   RSTRVRHI 626-626         TERORRHI 627-627         USKIDRHI 628-628       
   VULVCRHI 629-629         VCADJRHI 630-630         RLADJRHI 631-631       
   ADJOFRHI 632-633         NOCOUNTS 634-636         NWSTAT1 637-650 (A)    
   NWSTAT2 651-663 (A)      NWSTAT3 664-675 (A)      NWSTAT4 676-687 (A)    
   NWSTAT5 688-699 (A)      NWSTAT6 700-711 (A)      NWSTAT7 712-723 (A)    
   NWSTAT8 724-734 (A)      NWSTAT9 735-745 (A)      NWSTAT10 746-755 (A)   
   NWSTAT11 756-763 (A)     NWSTAT12 764-771 (A)     NWSTAT13 772-780 (A)   
   NWSTAT14 781-790 (A)     NWSTAT15 791-801 (A)     NWSTAT16 802-811 (A)   
   NWSTAT17 812-823 (A)     NOUSTAT 824-825          OFFTYPE2 826-827       
   GUNMIN1 828-830          GUNMIN2 831-833          DRUGMIN 834-836        
   AGE 837-838              YEARS 839-839            NEWCNVTN 840-840       
   CRIMPTS 841-843          CRPTS 844-844            SAFE 845-845           
   NEWRACE 846-846          PRISDUM 847-847          PROBDUM 848-850        
   SUPRDUM 851-851          COMDUM 852-852           HOMDUM 853-853         
   INTDUM 854-854           ALTDUM 855-855           DAYSDUM 856-861 (4)    
   SENTTOT 862-867 (2)      SENTTOT0 868-873 (2)     ALTMO 874-875          
   SENSPLT 876-881 (2)      SENSPLT0 882-887 (2)     SENTIMP 888-888        
   BODINJ 889-889           CHAP2 890-891            CIRCDIST 892-893       
   MONCIRC 894-895          NEWCIT 896-896           GLMIN 897-899          
   GLMAX 900-902            IS924C 903-903           DEQUART 904-905        
   RANGEPT 906-906          FINECDUM 907-907         COSTSDUM 908-908       
   RESTDUM 909-909          TYPEMONY 910-910         AMTFINEC 911-919       
   AMTREST 920-928          AMTTOTAL 929-937         ECONDUM 938-938        
   NEWEDUC 939-939          ZONE 940-940 (A)         INOUT 941-941          
   TIMESERV 942-947 (2)     WEAPSOC 948-948          WEAPON 949-949         
   MWEIGHT 950-962 (2)      UTO1 963-964             UTO2 965-965           
   UTO3 966-966             UTO4 967-967             UTO5 968-968           
   UFROM1 969-970           UFROM2 971-971           UFROM3 972-972         
   UFROM4 973-973           UFROM5 974-974           MWGT1 975-987 (2)      
   DRUGTYP1 988-990         WGT1 991-1002 (2)        DRGAM1 1003-1014 (2)   
   UNIT1 1015-1016          DATO1 1017-1026 (2)      DAFROM1 1027-1036 (2)  
   DUTO1 1037-1038          DUFROM1 1039-1040        MWGT2 1041-1053 (2)    
   DRUGTYP2 1054-1056       WGT2 1057-1068 (2)       DRGAM2 1069-1080 (2)   
   UNIT2 1081-1082          DATO2 1083-1092 (2)      DAFROM2 1093-1102 (2)  
   DUTO2 1103-1103          DUFROM2 1104-1104        MWGT3 1105-1117 (2)    
   DRUGTYP3 1118-1120       WGT3 1121-1132 (2)       DRGAM3 1133-1144 (2)   
   UNIT3 1145-1145          DATO3 1146-1155 (2)      DAFROM3 1156-1165 (2)  
   DUTO3 1166-1166          DUFROM3 1167-1167        MWGT4 1168-1180 (2)    
   DRUGTYP4 1181-1183       WGT4 1184-1195 (2)       DRGAM4 1196-1207 (2)   
   UNIT4 1208-1208          DATO4 1209-1218 (2)      DAFROM4 1219-1228 (2)  
   DUTO4 1229-1229          DUFROM4 1230-1230        MWGT5 1231-1243 (2)    
   DRUGTYP5 1244-1246       WGT5 1247-1258 (2)       DRGAM5 1259-1270 (2)   
   UNIT5 1271-1272          DATO5 1273-1282 (2)      DAFROM5 1283-1292 (2)  
   DUTO5 1293-1293          DUFROM5 1294-1294        COMBDRG2 1295-1296     
   DRUGPROB 1297-1297       NEWOFFLV 1298-1299       INRANGE 1300-1300.     
                                                                            
* SPSS VARIABLE LABELS COMMAND.                                             
                                                                            
VARIABLE LABELS                                                             
   ABERTXT "TEXT DESCRIPTION OF ABBERRATIONS"                               
   REASTXT1 "REASONS FOR DEPARTURE NOT IN REASON1"                          
   REASTXT2 "REASONS FOR DEPARTURE NOT IN REASON2"                          
   REASTXT3 "REASONS FOR DEPARTURE NOT IN REASON3"                          
   USSCIDN "UNIQUE CASE NUMBER"                                             
   DEPART "DEFENDANT'S DEPARTURE STATUS"                                    
   DISPOSIT "DISPOSITION OF DEFENDANT'S CASE"                               
   DSJANDC "DOC STATUS-JUDGMENT & CONVICTION ORDER"                         
   ACCTRESP "ADJ BASED ON ACCPTANCE OF RESPONSIBILITY"                      
   TYPEOTHS "OTHER TYPES OF SENTENCES ORDERED"                              
   DSPLEA "DOCUMENT STATUS FOR PLEA"                                        
   POOFFICE "CODE FOR PSR PREPARATION PROBATION OFFIC"                      
   MONOFFTP "OFFENS TYPE DETRMNED BY MONITORING CODER"                      
   PROBATN "TOTAL PROBATION ORDERED IN MONTHS"                              
   ACCGDLN "ACCEPTANCE OF FINDINGS & GUIDLNE FACTORS"                       
   DSPSR "DOCUMENT STATUS FOR PRESENTENCE REPORT"                           
   RESNTDOC "IF AND WHY A RESENTENCING OCCURRED"                            
   SCRNOUT "SCREEN OUT STATUS OF CASE"                                      
   SENTDATE "DATE ON WHICH DEFENDANT WAS SENTENCED"                         
   FINE "DOLLAR AMOUNT OF FINE ORDERED"                                     
   TOTREST "DOLLAR AMOUNT OF RESTITUTION ORDERED"                           
   COSTSUP "DOLLAR AMOUNT OF COST OF SUPERVISION"                           
   DISTRICT "DISTRICT WHERE DEFENDANT WAS SENTENCED"                        
   DSSOR "DOCUMENT STATUS FOR STATEMENT OF REASONS"                         
   RECDATE "DATE 1ST DOC WAS RECEIVED AT COMMISSION"                        
   AMENDYR "GDELINE AMENDMENT YR USED IN CALCULATION"                       
   ACCAP "ARMED CAREER CRIMINAL STATUS APPLIED"                             
   CAROFFAP "CAREER OFFENDER STATUS APPLIED"                                
   CITWHERE "DEF'S COUNTRY OF CITIZENSHIP IF NOT U.S."                      
   MOCOMCON "TERM OF COMMNTY CONFINMNT ORDRD (MONTHS)"                      
   HRCOMSRV "NUMBER OF COMMUNITY SERVICE HOURS ORDERE"                      
   CITIZEN "NATURE OF DEFENDANT'S CITIZENSHIP"                              
   NUMDEPEN "NUM DEPENDENTS WHOM DFNDT SUPPORTS"                            
   DEFENNUM "DEFENDANT'S NUMBER"                                            
   DEFCONSL "TYPE DEF COUNSEL USED IN INSTANT OFFNSE"                       
   EDUCATN "DEFENDANT'S HIGHEST LEVEL OF EDUCATION"                         
   ENCRYPT1 "USE OF ENCRYPTION OR SCRAMBLING TECHNOLO"                      
   ENCRYPT2 "POINTS ASSESSED UNDER OBSTRUCTION OF JUS"                      
   FINEWAIV "WHETHER FINE (OR PORTION) WAS WAIVED"                          
   MOHOMDET "TERM OF HOME DETENTION ORDERED IN MOS."                        
   HISPORIG "DEFENDANT'S ETHNIC ORIGIN"                                     
   MOINTCON "TERM OF INTRMITTNT CONFINMNT ORDRD (MOS)"                      
   SOURCES "CODED INFO BASED ON KNOWN COURT FINDINGS"                       
   MARRIED "MARITAL STATUS OF OFFENDER"                                     
   COADJLEV "COMBINED ADJUSTED OFFENSE LEVEL SUBTOTAL"                      
   TOTUNIT "NO. UNITS USED TO CALCULAT OFFENS LVL AD"                       
   PRESENT "OFFENDER'S PRE-SENTENCE DETENTION STATUS"                       
   CRIMHIST "DOES DEFENDANT HAVE ANY CRIMINAL HISTORY"                      
   TOTDAYS "TOTAL DAYS OF IMPRISONMENT ORDERED"                             
   TOTPRISN "TOTAL MONTHS OF IMPRISONMENT ORDERED"                          
   XCRHISSR "DEFENDANTS FINAL CRIMINAL HISTORY CATEGO"                      
   TOTCHPTS "TOTAL NUM OF CRIM HIST POINTS APPLIED"                         
   XMAXSOR "MAX GUIDELINE RANGE FOR IMPRISONMENT"                           
   XMINSOR "MIN GUIDELINE RANGE FOR IMPRISONMENT"                           
   XFOLSOR "FINAL OFFENSE LEVEL"                                            
   STATMAX "TOTAL STATUTORY MAX PRISON TERM IN MOS."                        
   STATMIN "TOTAL STATUTORY MIN PRISON TERM IN MOS."                        
   SPECASSM "$ VALUE OF SPECIAL ASSESSMENT FEE"                             
   SUPREL "MONTHS OF SUPERVISED RELEASE ORDERED"                            
   ACCCAT "ADJUST IN CASE ACC STATUS AFFECTED PREVI"                        
   MONRACE "DEFENDANT'S RACE"                                               
   DOB "DEFENDANT'S DATE OF BIRTH"                                          
   MONSEX "DEFENDANT'S GENDER"                                              
   DSIND "DOCUMENT STATUS FOR INDICTMENT OR INFORM"                         
   DSAPPEAL "DOCUMENT STATUS FOR APPEAL"                                    
   ABERCASE "ABBERATION IN CASE"                                            
   POINT1 "NUM ONE-POINT INCIDENTS"                                         
   POINT2 "NUM TWO-POINT INCIDENTS"                                         
   POINT3 "NUM THREE-POINT INCIDENTS"                                       
   SENTPTS "NUM PTS FROM INSTANT OFFENSE"                                   
   REL2PTS "NUM PTS FROM INSTANT OFFENSE < 2 YRS AFT"                       
   VIOL1PTS "NUM PTS FOR EACH PRIOR SENTENCE"                               
   CAROFFLV "LVL IF CHANGE DUE TO CAREER OFFNDER STAT"                      
   CRIMLIV "OFFENSE LVL BASED ON CRIMINAL LIVELIHOOD"                       
   ACCOFFLV "LVL IF CHANGED BY ARMED CAREER CRIM STAT"                      
   REASON1 "1ST REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   REASON2 "2ND REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   REASON3 "3RD REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   NOCOMP "NUMBER OF GUIDELINE COMPUTATIONS"                                
   GDSTATHI "STATUTORY GUIDELINE APPLIED"                                   
   GDLINEHI "HIGHEST COMPUTATION OF GDLINE"                                 
   ADJOFLHI "HIGHEST COMPUTATION OF ADJOFLV"                                
   BASEHI "HIGHEST COMPUTATION OF BASE"                                     
   ADJ_BHI "HIGHEST COMPUTATION OF ADJ_B"                                   
   ADJ_CHI "HIGHEST COMPUTATION OF ADJ_C"                                   
   ADJ_DHI "HIGHEST COMPUTATION OF ADJ_D"                                   
   ADJ_EHI "HIGHEST COMPUTATION OF ADJ_E"                                   
   ADJ_FHI "HIGHEST COMPUTATION OF ADJ_F"                                   
   ADJ_GHI "HIGHEST COMPUTATION OF ADJ_G"                                   
   ADJ_HHI "HIGHEST COMPUTATION OF ADJ_H"                                   
   ADJ_IHI "HIGHEST COMPUTATION OF ADJ_I"                                   
   ABUSHI "HIGHEST COMPUTATION OF ABUS"                                     
   AGGROLHI "HIGHEST COMPUTATION OF AGGROL"                                 
   BASADJHI "HIGHEST OF BASADJ"                                             
   FLIGHTHI "HIGHEST COMPUTATION OF FLIGHT"                                 
   LOSSHI "HIGHEST COMPUTATION OF LOSS"                                     
   MITROLHI "HIGHEST COMPUTATION OF MITROL"                                 
   OBSTRCHI "HIGHEST COMPUTATION OF OBSTRC"                                 
   OFFVCTHI "HIGHEST COMPUTATION OF OFFVCT"                                 
   RSTRVCHI "HIGHEST COMPUTATION OF RSTRVC"                                 
   TERORHI "HIGHEST COMPUTATION OF TEROR"                                   
   USKIDHI "HIGHEST COMPUTATION OF USKID"                                   
   VULVCTHI "HIGHEST COMPUTATION OF VULVCT"                                 
   VCTADJHI "HIGHEST COMPUTATION OF VCTADJ"                                 
   ROLADJHI "HIGHEST COMPUTATION OF ROLADJ"                                 
   GDREFHI "REFERENCE GUIDELINE APPLIED"                                    
   BASERHI "HIGHEST OF BASER"                                               
   ADJR_BHI "HIGHEST OF ADJR_B"                                             
   ADJR_CHI "HIGHEST OF ADJR_C"                                             
   ADJR_DHI "HIGHEST OF ADJR_D"                                             
   ADJR_EHI "HIGHEST OF ADJR_E"                                             
   ADJR_FHI "HIGHEST OF ADJR_F"                                             
   ADJR_GHI "HIGHEST OF ADJR_G"                                             
   ADJR_HHI "HIGHEST OF ADJR_H"                                             
   ADJR_IHI "HIGHEST OF ADJR_I"                                             
   ABUSRHI "HIGHEST COMPUTATION OF ABUSR"                                   
   AGGRLRHI "HIGHEST OF AGGRLR"                                             
   BASADRHI "HIGHEST OF BASADR"                                             
   FLGHTRHI "HIGHEST OF FLIGHTR"                                            
   LOSSRHI "HIGHEST COMPUTATION OF LOSSR"                                   
   MITRLRHI "HIGHEST OF MITRLR"                                             
   OBSTRRHI "HIGHEST OF OBSTRR"                                             
   OFFVCRHI "HIGHEST OF OFFVCR"                                             
   RSTRVRHI "HIGHEST COMPUTATION OF RSTRVR"                                 
   TERORRHI "HIGHEST OF TERORR"                                             
   USKIDRHI "HIGHEST OF USKIDR"                                             
   VULVCRHI "HIGHEST OF VULVCR"                                             
   VCADJRHI "HIGHEST COMPUTATION OF VCADJR"                                 
   RLADJRHI "HIGHEST OF ROLADJR"                                            
   ADJOFRHI "HIGHEST OF ADJOFR"                                             
   NOCOUNTS "NUMBER OF COUNTS OF CONVICTION"                                
   NWSTAT1 "UNIQUE STATUTES (1ST MENTION)"                                  
   NWSTAT2 "UNIQUE STATUTES (2ND MENTION)"                                  
   NWSTAT3 "UNIQUE STATUTES (3RD MENTION)"                                  
   NWSTAT4 "UNIQUE STATUTES (4TH MENTION)"                                  
   NWSTAT5 "UNIQUE STATUTES (5TH MENTION)"                                  
   NWSTAT6 "UNIQUE STATUTES (6TH MENTION)"                                  
   NWSTAT7 "UNIQUE STATUTES (7TH MENTION)"                                  
   NWSTAT8 "UNIQUE STATUTES (8TH MENTION)"                                  
   NWSTAT9 "UNIQUE STATUTES (9TH MENTION)"                                  
   NWSTAT10 "UNIQUE STATUTES (10TH MENTION)"                                
   NWSTAT11 "UNIQUE STATUTES (11TH MENTION)"                                
   NWSTAT12 "UNIQUE STATUTES (12TH MENTION)"                                
   NWSTAT13 "UNIQUE STATUTES (13TH MENTION)"                                
   NWSTAT14 "UNIQUE STATUTES (14TH MENTION)"                                
   NWSTAT15 "UNIQUE STATUTES (15TH MENTION)"                                
   NWSTAT16 "UNIQUE STATUTES (16TH MENTION)"                                
   NWSTAT17 "UNIQUE STATUTES (17TH MENTION)"                                
   NOUSTAT "NUMBER OF UNIQUE STATUTES IN CASE"                              
   OFFTYPE2 "PRIM OFF TYP-CASE GENERATED FROM STAT MA"                      
   GUNMIN1 "MANDATRY MIN SENTNCE UNDR 18.924C (MONTH"                       
   GUNMIN2 "MANDATRY MIN SENTNCE UNDR 18.924E (MONTH"                       
   DRUGMIN "MANDATRY MIN SENTNCE (MONTHS) FOR DRUG"                         
   AGE "DEFENDANT'S AGE AT TIME OF OFFENSE"                                 
   YEARS "CATEGORIES OF AGE RANGES"                                         
   NEWCNVTN "SETTLED BY PLEA AGREEMENT OR TRIAL"                            
   CRIMPTS "SUBTOTAL OF CRIM HIST POINTS APPLIED"                           
   CRPTS "CRIMINAL HISTORY POINTS AWARDED"                                  
   SAFE "SAFETY VALVE DUMMY INDICATOR"                                      
   NEWRACE "RACE OF DEFENDANT"                                              
   PRISDUM "RECEIPT OF PRISON SENTENCE"                                     
   PROBDUM "RECEIPT OF PROBATION"                                           
   SUPRDUM "RECEIPT OF SUPERVISED RELEASE"                                  
   COMDUM "RECEIPT OF COMMUNITY CONFINEMENT"                                
   HOMDUM "RECEPIT OF HOME DETENTION"                                       
   INTDUM "RECEIPT OF INTERMITTENT CONFINEMENT"                             
   ALTDUM "ALTERNATIVE SENTENCE"                                            
   DAYSDUM "DAYS IN PRISON (FRACTION OF MONTHS)"                            
   SENTTOT "TOTAL PRISON SENTENCE (MONTHS) W/O ZEROS"                       
   SENTTOT0 "TOTAL PRISON SENTENCE (MONTHS) WITH ZERO"                      
   ALTMO "CUMULATIVE MONTHS OF ALT INCARCERATION"                           
   SENSPLT "TOTAL PRISON SENTENCE (MONTHS) W/O ZEROS"                       
   SENSPLT0 "TOTAL PRISON SENTENCE (MONTHS) WITH ZERO"                      
   SENTIMP "TYPE OF SENTENCE"                                               
   BODINJ "SOC ENHANCEMENT INCLUDED FOR BODILY INJU"                        
   CHAP2 "BASE OFFENSE LEVEL PLUS CHAPTER TWO SOCS"                         
   CIRCDIST "DISTRICTS (SAME ORDER AS IN ANNUAL REPOR"                      
   MONCIRC "CIRCUIT IN WHICH DEFENDANT WAS SENTENCED"                       
   NEWCIT "CITIZENSHIP OF DEFENDANT"                                        
   GLMIN "ADJUSTED GUIDELINE RANGE MINIMUM"                                 
   GLMAX "ADJUSTED GUIDELINE RANGE MAXIMUM"                                 
   IS924C "SUBSECTION FLAG"                                                 
   DEQUART "SENTENCE RELATIVE TO GUIDELINE RANGE"                           
   RANGEPT "RANGE POINT ON SENTENCING"                                      
   FINECDUM "FINE/COST OF SUPERVISION AMOUNT GIVEN"                         
   COSTSDUM "COST OF SUPERVISION GIVEN"                                     
   RESTDUM "RESTITUTION AMOUNT GIVEN"                                       
   TYPEMONY "FINE/COST OF SUPERVISION OR RESTITUTION"                       
   AMTFINEC "$ AMT OF FINE/COST OF SUPERVISION"                             
   AMTREST "$ AMT OF RESTITUTION"                                           
   AMTTOTAL "SUM OF FINE/COST OF SUPERVISION OR RESTI"                      
   ECONDUM "FINE/COST OF SUPERVISION OR RESTITUTION"                        
   NEWEDUC "EDUCATION OF DEFENDANT"                                         
   ZONE "SENTENCE TABLE GROUP"                                              
   INOUT "WHETHER DEFENDANT RECEIVED PRISON SENTEN"                         
   TIMESERV "MIN PRISON TIME THE DEF WILL SERV (MOS)"                       
   WEAPSOC "SOC ENHANCEMENT FOR A WEAPON PRESENT"                           
   WEAPON "SOC WEAPON ENHANCEMENT OR CONVICTION"                            
   MWEIGHT "ALL DRUG WGTS-MARIJNA WGT EQUIVAL (GRAMS"                       
   UTO1 "UTO1"                                                              
   UTO2 "UTO2"                                                              
   UTO3 "UTO3"                                                              
   UTO4 "UTO4"                                                              
   UTO5 "UTO5"                                                              
   UFROM1 "UFROM1"                                                          
   UFROM2 "UFROM2"                                                          
   UFROM3 "UFROM3"                                                          
   UFROM4 "UFROM4"                                                          
   UFROM5 "UFROM5"                                                          
   MWGT1 "MARIJUANA WGT EQUIVAL (GRAMS) OF 1ST DRU"                         
   DRUGTYP1 "INDICATOR OF 1ST TYPE OF DRUG"                                 
   WGT1 "GRAM AMT OF 1ST DRUG TYPE"                                         
   DRGAM1 "AMOUNT OF 1ST DRUG TYPE"                                         
   UNIT1 "UNIT OF MEASURE FOR 1ST TYPE OF DRUGS"                            
   DATO1 "DRUG WEIGHT RANGE HIGH DRUGTYP1"                                  
   DAFROM1 "DRUG WEIGHT RANGE LOW DRUGTYP1"                                 
   DUTO1 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP1"                           
   DUFROM1 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP1"                          
   MWGT2 "MARIJUANA WGT EQUIVAL (GRAMS) OF 2ND DRU"                         
   DRUGTYP2 "INDICATOR OF 2ND TYPE OF DRUG"                                 
   WGT2 "GRAM AMT OF 2ND DRUG TYPE"                                         
   DRGAM2 "AMOUNT OF 2ND DRUG TYPE"                                         
   UNIT2 "UNIT OF MEASURE FOR 2ND TYPE OF DRUGS"                            
   DATO2 "DRUG WEIGHT RANGE HIGH DRUGTYP2"                                  
   DAFROM2 "DRUG WEIGHT RANGE LOW DRUGTYP2"                                 
   DUTO2 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP2"                           
   DUFROM2 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP2"                          
   MWGT3 "MARIJUANA WGT EQUIVAL (GRAMS) OF 3RD DRU"                         
   DRUGTYP3 "INDICATOR OF 3RD TYPE OF DRUG"                                 
   WGT3 "GRAM AMT OF 3RD DRUG TYPE"                                         
   DRGAM3 "AMOUNT OF 3RD DRUG TYPE"                                         
   UNIT3 "UNIT OF MEASURE FOR 3RD TYPE OF DRUGS"                            
   DATO3 "DRUG WEIGHT RANGE HIGH DRUGTYP3"                                  
   DAFROM3 "DRUG WEIGHT RANGE LOW DRUGTYP3"                                 
   DUTO3 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP3"                           
   DUFROM3 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP3"                          
   MWGT4 "MARIJUANA WGT EQUIVAL (GRAMS) OF 4TH DRU"                         
   DRUGTYP4 "INDICATOR OF 4TH TYPE OF DRUG"                                 
   WGT4 "GRAM AMT OF 4TH DRUG TYPE"                                         
   DRGAM4 "AMOUNT OF 4TH DRUG TYPE"                                         
   UNIT4 "UNIT OF MEASURE FOR 4TH TYPE OF DRUGS"                            
   DATO4 "DRUG WEIGHT RANGE HIGH DRUGTYP4"                                  
   DAFROM4 "DRUG WEIGHT RANGE LOW DRUGTYP4"                                 
   DUTO4 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP4"                           
   DUFROM4 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP4"                          
   MWGT5 "MARIJUANA WGT EQUIVAL (GRAMS) OF 5TH DRU"                         
   DRUGTYP5 "INDICATOR OF 5TH TYPE OF DRUG"                                 
   WGT5 "GRAM AMT OF 5TH DRUG TYPE"                                         
   DRGAM5 "AMOUNT OF 5TH DRUG TYPE"                                         
   UNIT5 "UNIT OF MEASURE FOR 5TH TYPE OF DRUGS"                            
   DATO5 "DRUG WEIGHT RANGE HIGH DRUGTYP5"                                  
   DAFROM5 "DRUG WEIGHT RANGE LOW DRUGTYP5"                                 
   DUTO5 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP5"                           
   DUFROM5 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP5"                          
   COMBDRG2 "AGGREGATION OF DRUGTYP1"                                       
   DRUGPROB "PROBLEM W/DRUG TYPE, AMT, AND BASE OFFEN"                      
   NEWOFFLV "NEWOFFLV"                                                      
   INRANGE "CASE SENTENCED W/IN GUIDELINE RANGE".                           
                                                                            
* SPSS VALUE LABELS COMMAND.                                                
                                                                            
VALUE LABELS                                                                
   DEPART                                                                   
   0 "No departure"                                                         
   1 "Upward departure"                                                     
   2 "Downward departure"                                                   
   3 "Substntial assistnce"                                                 
   8 "Inapplicable" /                                                       
   DISPOSIT                                                                 
   1 "Guilty plea"                                                          
   2 "Nolo contendere"                                                      
   3 "Jury trial"                                                           
   4 "Trial-judge/bench"                                                    
   5 "Guilty plea &  trial" /                                               
   DSJANDC                                                                  
   0 "Not received"                                                         
   1 "Received J& C"                                                        
   2 "Recvd alt sent. doc"                                                  
   6 "Not rcvd-undr crt sl"                                                 
   7 "Rcvd-undr court seal"                                                 
   8 "Never be available" /                                                 
   ACCTRESP                                                                 
   -4 "Applied"                                                             
   -3 "Adjustment applied"                                                  
   -2 "Adjustment applied"                                                  
   -1 "Applied"                                                             
   0 "Not Applied" /                                                        
   TYPEOTHS                                                                 
   0 "None"                                                                 
   1 "Suspnded prison term"                                                 
   2 "Pay cost of prosectn"                                                 
   3 "Denial of fed benfts"                                                 
   77 "Other" /                                                             
   DSPLEA                                                                   
   0 "Not received"                                                         
   1 "Recvd writtn agremnt"                                                 
   2 "Received alt doc"                                                     
   3 "Oral plea"                                                            
   4 "Writn-never be recvd"                                                 
   6 "Not rcvd-undr crt sl"                                                 
   7 "Recvd-under crt seal"                                                 
   8 "N/A (e.g. trial)" /                                                   
   POOFFICE                                                                 
   "Z"  "Missing" /                                                         
   MONOFFTP                                                                 
   1 "Murder"                                                               
   2 "Manslaughter"                                                         
   3 "Kidnapping/hostage"                                                   
   4 "Sexual abuse"                                                         
   5 "Assault"                                                              
   6 "Bank robbery"                                                         
   7 "Other robbery"                                                        
   8 "Extortion"                                                            
   9 "Arson"                                                                
   10 "Drugs:trafficking"                                                   
   11 "Drugs:comm facil"                                                    
   12 "Drugs:smpl posses"                                                   
   13 "Firearms:use"                                                        
   14 "Frarm:possess, traff"                                                
   15 "Brglry/break &  enter"                                               
   16 "Auto theft"                                                          
   17 "Larceny"                                                             
   18 "Fraud"                                                               
   19 "Embezzlement"                                                        
   20 "Forgery/countrfeitng"                                                
   21 "Bribery"                                                             
   22 "Tax offenses"                                                        
   23 "Money laundering"                                                    
   24 "Racketeering"                                                        
   25 "Gambling/lottery"                                                    
   26 "Civil rghts offenses"                                                
   27 "Immigration"                                                         
   28 "Porngrphy/prostitutn"                                                
   29 "Offenses in prison"                                                  
   30 "Admin of jstce-reltd"                                                
   31 "Envir/gme/fsh/wldlfe"                                                
   32 "Natnl defense offens"                                                
   33 "Antitrust violations"                                                
   34 "Food &  drug offenses"                                               
   35 "Trafc violtns/other"                                                 
   36 "Oth violent offenses"                                                
   37 "Other drug offenses"                                                 
   38 "Oth firearm offenses"                                                
   39 "Oth property offense"                                                
   40 "Other environmental"                                                 
   41 "Other misc offenses"                                                 
   99 "Missing" /                                                           
   PROBATN                                                                  
   0 "No probation ordered"                                                 
   97 "No term specified" /                                                 
   ACCGDLN                                                                  
   0 "Crt DOES NOT accept"                                                  
   1 "Court DOES accept"                                                    
   8 "Inapplicable" /                                                       
   DSPSR                                                                    
   0 "Not received"                                                         
   1 "Received PSR"                                                         
   2 "Recvd alt doc"                                                        
   6 "Not rcvd-undr crt sl"                                                 
   7 "Recvd-under crt seal"                                                 
   8 "Waived/never receive" /                                               
   RESNTDOC                                                                 
   0 "No resentc doc recvd"                                                 
   1 "Amended sentc recvd"                                                  
   2 "Correctd sentc recvd"                                                 
   3 "Modified sentc recvd"                                                 
   4 "Corctn sent on remnd"                                                 
   5 "Reduct-circ:subs ass"                                                 
   6 "Crct-arith/cler/tech"                                                 
   7 "Mod of superv condns"                                                 
   8 "Mod-term:extr reason"                                                 
   9 "Mod-term:retro amend"                                                 
   10 "Motion to vcate sent"                                                
   11 "Resentc/life imprisn"                                                
   12 "Mod of rstitutn ordr"                                                
   13 "Oth documents recvd"                                                 
   14 "Docs seald-not recvd"                                                
   15 "Docs sealed-received" /                                              
   SCRNOUT                                                                  
   0 "Not screened out"                                                     
   1 "All invlve petty off"                                                 
   2 "Prior to 11/1/1987"                                                   
   3 "Divrsnry sentc ordrd" /                                               
   FINE                                                                     
   0 "No fine"                                                              
   9999999997 "Amt not specified" /                                         
   TOTREST                                                                  
   0 "None"                                                                 
   9999999997 "Amt not specified" /                                         
   COSTSUP                                                                  
   0 "No cost specified"                                                    
   999997 "Tot ord, no amt specf" /                                         
   DSSOR                                                                    
   0 "Not received"                                                         
   1 "Received SOR form"                                                    
   2 "Rcv trnscpt/part SOR"                                                 
   6 "Not rcvd-undr crt sl"                                                 
   7 "Recvd-undr crt seal"                                                  
   8 "N/A" /                                                                
   AMENDYR                                                                  
   87 "1987 guidelin manual"                                                
   88 "1988 guidelin manual"                                                
   89 "1989 guidelin manual"                                                
   90 "1990 guidelin manual"                                                
   91 "1991 guidelin manual"                                                
   92 "1992 guidelin manual"                                                
   93 "1993 guidelin manual"                                                
   94 "1994 guidelin manual"                                                
   95 "1995 guidelin manual"                                                
   96 "1996 guidelin manual"                                                
   97 "1997 guidelin manual"                                                
   98 "1998 guidelin manual" /                                              
   ACCAP                                                                    
   0 "Not applied"                                                          
   1 "Applied" /                                                            
   CAROFFAP                                                                 
   0 "Not applied"                                                          
   1 "Applied" /                                                            
   CITWHERE                                                                 
   20 "Cuba"                                                                
   21 "Argentina"                                                           
   22 "Bahamas"                                                             
   23 "Belize"                                                              
   24 "Bolivia"                                                             
   25 "Canada"                                                              
   26 "Chile"                                                               
   27 "China"                                                               
   28 "Colombia"                                                            
   29 "Cuba"                                                                
   30 "Dominican Republic"                                                  
   31 "Ecuador"                                                             
   32 "El Salvador"                                                         
   33 "France"                                                              
   34 "Germany"                                                             
   35 "Ghana"                                                               
   36 "Gr Brit/UK/England"                                                  
   37 "Guatemala"                                                           
   38 "Guyana"                                                              
   39 "Haiti"                                                               
   40 "Honduras"                                                            
   41 "India"                                                               
   42 "Iran"                                                                
   43 "Israel"                                                              
   44 "Italy"                                                               
   45 "Jamaica"                                                             
   46 "Jordan"                                                              
   47 "Korea (North/South)"                                                 
   48 "Lebanon"                                                             
   49 "Mexico"                                                              
   50 "Nicaragua"                                                           
   51 "Nigeria"                                                             
   52 "Pakistan"                                                            
   53 "Panama"                                                              
   54 "Peru"                                                                
   55 "Philippines"                                                         
   56 "USSR/Russ/Rep Sov St"                                                
   57 "Thailand"                                                            
   58 "Trinidad and Tobago"                                                 
   59 "Venezuela"                                                           
   60 "Vietnam(North/South)"                                                
   61 "Afghanistan"                                                         
   62 "Albania"                                                             
   63 "Antigua and Barbuda"                                                 
   64 "Australia"                                                           
   65 "Bangladesh"                                                          
   66 "Barbados"                                                            
   67 "Benin"                                                               
   68 "Brazil"                                                              
   69 "Costa Rica"                                                          
   70 "Greece"                                                              
   71 "Guinea"                                                              
   72 "Hong Kong"                                                           
   73 "Indonesia"                                                           
   74 "Iraq"                                                                
   75 "Ireland"                                                             
   76 "Kuwait"                                                              
   77 "OTHER country code"                                                  
   78 "Laos"                                                                
   79 "Liberia"                                                             
   80 "Malaysia"                                                            
   81 "Netherlands"                                                         
   82 "Poland"                                                              
   83 "Romania"                                                             
   84 "Portugal"                                                            
   85 "Spain"                                                               
   86 "St. Kitts"                                                           
   87 "Syria"                                                               
   88 "Taiwan"                                                              
   89 "Togo"                                                                
   90 "Yemen"                                                               
   91 "Yugoslavia"                                                          
   100 "Algeria"                                                            
   101 "Andorra"                                                            
   102 "Angola"                                                             
   103 "Armenia"                                                            
   104 "Austria"                                                            
   105 "Azerbaijan"                                                         
   106 "Bahrain"                                                            
   107 "Belarus"                                                            
   108 "Belgium"                                                            
   109 "Bhutan"                                                             
   110 "Bosnia &  Herzegovina"                                              
   111 "Botswana"                                                           
   112 "Brunei Darussalem"                                                  
   113 "Bulgaria"                                                           
   114 "Burkina Faso"                                                       
   115 "Burundi"                                                            
   116 "Cambodia"                                                           
   117 "Cameroon"                                                           
   118 "Cape Verde"                                                         
   119 "Centrl African Repub"                                               
   120 "Chad"                                                               
   121 "Comoros"                                                            
   122 "Congo"                                                              
   123 "Cote dlvoire"                                                       
   124 "Croatia"                                                            
   125 "Cyprus"                                                             
   126 "Czech Republic"                                                     
   127 "Denmark"                                                            
   128 "Djibouti"                                                           
   129 "Dominica"                                                           
   130 "Egypt"                                                              
   131 "Eritrea"                                                            
   132 "Estonia"                                                            
   133 "Ethiopia"                                                           
   134 "Fiji"                                                               
   135 "Finland"                                                            
   136 "Gabon"                                                              
   137 "Gambia"                                                             
   138 "Georgia"                                                            
   139 "Grenada"                                                            
   140 "Hungary"                                                            
   141 "Iceland"                                                            
   142 "Japan"                                                              
   143 "Kazakhatan"                                                         
   144 "Kenya"                                                              
   145 "Kyrqyzstan"                                                         
   146 "Latvia"                                                             
   147 "Lesotho"                                                            
   148 "Libyn Arab Jamahirya"                                               
   149 "Liechtenstein"                                                      
   150 "Lithuania"                                                          
   151 "Luxembourg"                                                         
   152 "Madagascar"                                                         
   153 "Malawi"                                                             
   154 "Maldives"                                                           
   155 "Mali"                                                               
   156 "Malta"                                                              
   157 "Marshall Islands"                                                   
   158 "Mauritania"                                                         
   159 "Mauritius"                                                          
   160 "Micronesia"                                                         
   161 "Moldova"                                                            
   162 "Monaco"                                                             
   163 "Mongolia"                                                           
   164 "Morocco"                                                            
   165 "Mozambique"                                                         
   166 "Myanmar"                                                            
   167 "Namibia"                                                            
   168 "Nepal"                                                              
   169 "New Zealand"                                                        
   170 "Norway"                                                             
   171 "Oman"                                                               
   172 "Palau"                                                              
   173 "Papua New Guinea"                                                   
   174 "Paraguay"                                                           
   175 "Qatar"                                                              
   176 "Rwanda"                                                             
   177 "Saint Lucia"                                                        
   178 "St Vincnt/Grenadines"                                               
   179 "Samoa"                                                              
   180 "San Marino"                                                         
   181 "Sao Tomo &  Principe"                                               
   182 "Saudi Arabia"                                                       
   183 "Senegal"                                                            
   184 "Seychelles"                                                         
   185 "Sierra Leone"                                                       
   186 "Singapore"                                                          
   187 "Slovakia"                                                           
   188 "Slovenia"                                                           
   189 "Solomon Islands"                                                    
   190 "Somalia"                                                            
   191 "South Africa"                                                       
   192 "Sri Lanka"                                                          
   193 "Sudan"                                                              
   194 "Suriname"                                                           
   195 "Swaziland"                                                          
   196 "Sweden"                                                             
   197 "Switzerland"                                                        
   198 "Tajikistan"                                                         
   199 "Tanzania"                                                           
   200 "Tunisia"                                                            
   201 "Turkey"                                                             
   202 "Turkmenistan"                                                       
   203 "Uganda"                                                             
   204 "Ukraine"                                                            
   205 "United Arab Emirates"                                               
   206 "Uruguay"                                                            
   207 "Uzbekistan"                                                         
   208 "Vanuatu"                                                            
   209 "Zambia"                                                             
   210 "Zimbabwe"                                                           
   211 "United States (N/A)" /                                              
   MOCOMCON                                                                 
   0 "None ordered"                                                         
   97 "No term specified" /                                                 
   HRCOMSRV                                                                 
   9997 "Term not specified" /                                              
   CITIZEN                                                                  
   1 "United States citzen"                                                 
   2 "Resident/legal alien"                                                 
   3 "Illegal alien"                                                        
   4 "Not US citizen" /                                                     
   NUMDEPEN                                                                 
   0 "No dependents"                                                        
   97 "Exact number unknown" /                                              
   DEFCONSL                                                                 
   1 "Prvtly retand counsl"                                                 
   2 "Crt appointd counsel"                                                 
   3 "Federal pub defender"                                                 
   4 "Def represented self"                                                 
   5 "Waivd rght to counsl"                                                 
   77 "Other arrangements" /                                                
   EDUCATN                                                                  
   0 "No schooling"                                                         
   1 "One yr schl completd"                                                 
   2 "Two yr schl completd"                                                 
   3 "Three yr schl compld"                                                 
   4 "Four yr schl compltd"                                                 
   5 "Five yr schl compltd"                                                 
   6 "Six yr schl completd"                                                 
   7 "Seven yr schl compld"                                                 
   8 "Eight yr schl compld"                                                 
   9 "Nine yr schl compltd"                                                 
   10 "Ten yr schl completd"                                                
   11 "Eleven yr schl compl"                                                
   12 "High school graduate"                                                
   13 "One year of college"                                                 
   14 "Two years of college"                                                
   15 "Three years college"                                                 
   16 "College graduate"                                                    
   21 "G.E.D."                                                              
   22 "Trade/vocational deg"                                                
   23 "Associate degree"                                                    
   24 "Grad degree"                                                         
   31 "Some elementary schl"                                                
   32 "Some high school"                                                    
   33 "Some trade/vocationl"                                                
   34 "Some college"                                                        
   35 "Some graduate school"                                                
   36 "Military training"                                                   
   37 "Middle schl/jr high" /                                               
   ENCRYPT1                                                                 
   0 "No"                                                                   
   1 "Yes" /                                                                
   ENCRYPT2                                                                 
   0 "No"                                                                   
   1 "Yes" /                                                                
   FINEWAIV                                                                 
   0 "No waiver stated"                                                     
   1 "Waivr specfcly statd"                                                 
   9 "Relevant docs missng" /                                               
   MOHOMDET                                                                 
   0 "None ordered"                                                         
   97 "Term not specified" /                                                
   HISPORIG                                                                 
   1 "Non-hispanic"                                                         
   2 "Hispanic" /                                                           
   MOINTCON                                                                 
   0 "None ordered"                                                         
   97 "No term specified" /                                                 
   SOURCES                                                                  
   1 "Inf repr KNOWN COURT"                                                 
   2 "Post-sent reprt rcvd"                                                 
   3 "PSR coded-insuff SOR"                                                 
   5 "PSR is coded-no SOR"                                                  
   6 "Sec18 Par924(c) only"                                                 
   8 "No analogous gdline"                                                  
   9 "Wavd/misng/mult lvls" /                                               
   MARRIED                                                                  
   1 "Single"                                                               
   2 "Married"                                                              
   3 "Cohabitating"                                                         
   4 "Divorced"                                                             
   5 "Widowed"                                                              
   6 "Separated" /                                                          
   PRESENT                                                                  
   1 "In custody"                                                           
   2 "Out on bail/bond"                                                     
   3 "Rleasd-own recogniz"                                                  
   4 "Other" /                                                              
   CRIMHIST                                                                 
   0 "No criminal history"                                                  
   1 "Yes, criminal histy" /                                                
   TOTDAYS                                                                  
   0 "None"                                                                 
   90 "990 mo or more"                                                      
   91 "Time served"                                                         
   92 "< 1 day imprisonment"                                                
   96 "Life imprsnmnt ordrd"                                                
   97 "Term not specified"                                                  
   98 "Death sentence" /                                                    
   TOTPRISN                                                                 
   0 "No prison or < 1 mo"                                                  
   990 "990 mo or more"                                                     
   991 "Time served"                                                        
   992 "< 1 day imprisonment"                                               
   996 "Life imprsnmnt ordrd"                                               
   997 "No term specified"                                                  
   998 "Death sentence" /                                                   
   TOTCHPTS                                                                 
   0 "None" /                                                               
   XMAXSOR                                                                  
   996 "Life" /                                                             
   XMINSOR                                                                  
   996 "Life" /                                                             
   STATMAX                                                                  
   996 "Life"                                                               
   997 "Death" /                                                            
   STATMIN                                                                  
   996 "Life"                                                               
   997 "Death" /                                                            
   SPECASSM                                                                 
   0 "None ordered" /                                                       
   SUPREL                                                                   
   0 "None ordered"                                                         
   996 "Life term ordered"                                                  
   997 "No term specified" /                                                
   ACCCAT                                                                   
   4 "Category IV"                                                          
   5 "Category V"                                                           
   6 "Category VI" /                                                        
   MONRACE                                                                  
   1 "White/Caucasian"                                                      
   2 "Black"                                                                
   3 "Am Indn/Alask Native"                                                 
   4 "Asian/Pacifc Islandr"                                                 
   5 "Multi-racial"                                                         
   7 "Other" /                                                              
   DOB                                                                      
   1012001 "Missing" /                                                      
   MONSEX                                                                   
   0 "Male"                                                                 
   1 "Female" /                                                             
   DSIND                                                                    
   0 "Not received"                                                         
   1 "Received indictment"                                                  
   2 "Received information"                                                 
   3 "Oth chrgng doc recvd"                                                 
   6 "Not rcvd-undr crt sl"                                                 
   7 "Recevd-undr crt seal"                                                 
   8 "Never be available" /                                                 
   DSAPPEAL                                                                 
   0 "Not received"                                                         
   1 "Received appeal"                                                      
   6 "Not rcvd-undr crt sl"                                                 
   7 "Recevd-undr crt seal" /                                               
   ABERCASE                                                                 
   0 "Not abberrant"                                                        
   1 "Has abberrations" /                                                   
   POINT1                                                                   
   0 "None" /                                                               
   POINT2                                                                   
   0 "None" /                                                               
   POINT3                                                                   
   0 "None" /                                                               
   SENTPTS                                                                  
   0 "None"                                                                 
   1 "Adjust-not in gdlns"                                                  
   2 "Adjustment applied" /                                                 
   REL2PTS                                                                  
   0 "None"                                                                 
   1 "Adjustment"                                                           
   2 "Adjustment" /                                                         
   VIOL1PTS                                                                 
   0 "No points applied"                                                    
   4 "4 pts added"                                                          
   5 "5 pts added" /                                                        
   CRIMLIV                                                                  
   0 "No livng from offens" /                                               
   REASON1                                                                  
   0 "No reason given"                                                      
   998 "Inapplicable"                                                       
   999 "Missing" /                                                          
   REASON2                                                                  
   0 "No reason given"                                                      
   998 "Inapplicable"                                                       
   999 "Missing" /                                                          
   REASON3                                                                  
   0 "No reason given"                                                      
   998 "Inapplicable"                                                       
   999 "Missing" /                                                          
   ADJ_BHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_CHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_DHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_EHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_FHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_GHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_HHI                                                                  
   0 "No adjustmnt applied" /                                               
   ADJ_IHI                                                                  
   0 "No adjustmnt applied" /                                               
   ABUSHI                                                                   
   0 "Adj not applied"                                                      
   1 "Increase"                                                             
   2 "Abuse applied"                                                        
   3 "Increase" /                                                           
   AGGROLHI                                                                 
   0 "No adjustmnt applied"                                                 
   1 "Applied-not in gdlin"                                                 
   2 "Apld-mgr/org/sup/ldr"                                                 
   3 "Appld-mgr/sup of 5+"                                                  
   4 "Appld-ldr/org of 5+" /                                                
   FLIGHTHI                                                                 
   0 "No adjustment"                                                        
   2 "Adjustment applied" /                                                 
   LOSSHI                                                                   
   9999999997 "Range of amounts" /                                          
   MITROLHI                                                                 
   -6 "Adj-not in USSG man"                                                 
   -4 "Minimal participatn"                                                 
   -3 "Btwn minr &  mnml pa"                                                
   -2 "Minor participation"                                                 
   -1 "Adj-not in USSG man"                                                 
   0 "No adjustment" /                                                      
   OBSTRCHI                                                                 
   0 "No adjustment"                                                        
   1 "Adjust-not in gdlns"                                                  
   2 "Adjustment applied" /                                                 
   OFFVCTHI                                                                 
   0 "No adjustment"                                                        
   2 "Adjustment applied"                                                   
   3 "Adjustment applied" /                                                 
   RSTRVCHI                                                                 
   0 "No adjustment"                                                        
   2 "Adjustment applied" /                                                 
   TERORHI                                                                  
   0 "No adjustmnt applied" /                                               
   USKIDHI                                                                  
   0 "No adjustmnt applied"                                                 
   2 "Adjustment applied" /                                                 
   VULVCTHI                                                                 
   0 "No adjustment"                                                        
   2 "Adj for vulnrble vic"                                                 
   3 "Adj for hate crime"                                                   
   5 "Adj hate &  vul vic" /                                                
   VCTADJHI                                                                 
   0 "No adjustmnt applied"                                                 
   1 "Adjustment applied" /                                                 
   ROLADJHI                                                                 
   0 "No adjust(s) given"                                                   
   1 "Role adjust(s) given" /                                               
   ADJR_BHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_CHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_DHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_EHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_FHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_GHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_HHI                                                                 
   0 "No adjustmnt applied" /                                               
   ADJR_IHI                                                                 
   0 "No adjustmnt applied" /                                               
   ABUSRHI                                                                  
   0 "Adjust not applied"                                                   
   1 "Increase"                                                             
   2 "Abuse Applied"                                                        
   3 "Increase" /                                                           
   AGGRLRHI                                                                 
   0 "No adjustmnt applied"                                                 
   1 "Applied-not in gdlin"                                                 
   2 "Apld-mgr/org/sup/ldr"                                                 
   3 "Appld-mgr/sup of 5+"                                                  
   4 "Appld-ldr/org of 5+" /                                                
   FLGHTRHI                                                                 
   0 "No adjustment"                                                        
   2 "Adjustment applied" /                                                 
   LOSSRHI                                                                  
   9999999997 "Range of amounts" /                                          
   MITRLRHI                                                                 
   -6 "Adj-not in USSG man"                                                 
   -4 "Minimal participatn"                                                 
   -3 "Btwn mnr &  mnml par"                                                
   -2 "Minor participation"                                                 
   -1 "Adj-not in USSG man"                                                 
   0 "No adjustment" /                                                      
   OBSTRRHI                                                                 
   0 "No adjustment"                                                        
   1 "Adjust-not in gdlns"                                                  
   2 "Adjustment applied" /                                                 
   OFFVCRHI                                                                 
   0 "No adjustment"                                                        
   2 "Adj appld-not in gdl"                                                 
   3 "Adjust applied" /                                                     
   RSTRVRHI                                                                 
   0 "No adjustment"                                                        
   2 "Adjustment applied" /                                                 
   TERORRHI                                                                 
   0 "No adjustmnt applied" /                                               
   USKIDRHI                                                                 
   0 "No adjustmnt applied"                                                 
   2 "Adjustment applied" /                                                 
   VULVCRHI                                                                 
   0 "No adjustment"                                                        
   2 "Adj for vulnrble vic"                                                 
   3 "Adj for hate crime"                                                   
   5 "Adj hate &  vul vic" /                                                
   VCADJRHI                                                                 
   0 "No adjustmnt applied"                                                 
   1 "Adjustment applied" /                                                 
   RLADJRHI                                                                 
   0 "No adjust(s) given"                                                   
   1 "Yes adjst(s) given" /                                                 
   OFFTYPE2                                                                 
   1 "Murder"                                                               
   2 "Manslaughter"                                                         
   3 "Kidnaping/hostage"                                                    
   4 "Sexual abuse"                                                         
   5 "Assault"                                                              
   6 "Bank robbery"                                                         
   9 "Arson"                                                                
   10 "Drugs:trafficking"                                                   
   11 "Drugs:comm facils"                                                   
   12 "Drugs:smpl posses"                                                   
   13 "Firearms:use"                                                        
   15 "Brglry/break &  enter"                                               
   16 "Auto theft"                                                          
   17 "Larceny"                                                             
   18 "Fraud"                                                               
   19 "Embezzlement"                                                        
   20 "Forgery/countrfeitng"                                                
   21 "Bribery"                                                             
   22 "Tax offenses"                                                        
   23 "Money laundering"                                                    
   24 "Racketeering"                                                        
   25 "Gambling/lottery"                                                    
   26 "Civil rights offnses"                                                
   27 "Immigration"                                                         
   28 "Pornography/prostitn"                                                
   29 "Offenses in prisons"                                                 
   30 "Admin of just-relted"                                                
   31 "Env/game/fish/wldlfe"                                                
   32 "Natnl defense offens"                                                
   33 "Antitrust violations"                                                
   34 "Food &  drug offenses"                                               
   35 "Trffc violatns &  oth" /                                             
   GUNMIN1                                                                  
   996 "Life"                                                               
   997 "Further review" /                                                   
   GUNMIN2                                                                  
   996 "Life"                                                               
   997 "Further review" /                                                   
   DRUGMIN                                                                  
   996 "Life"                                                               
   997 "Problem case" /                                                     
   YEARS                                                                    
   1 "<21"                                                                  
   2 "21 through 25"                                                        
   3 "26 through 30"                                                        
   4 "31 through 35"                                                        
   5 "36 through 40"                                                        
   6 "41 through 50"                                                        
   7 ">50" /                                                                
   NEWCNVTN                                                                 
   0 "Plea"                                                                 
   1 "Trial" /                                                              
   CRIMPTS                                                                  
   0 "No history pts appld" /                                               
   CRPTS                                                                    
   0 "No history pts award"                                                 
   1 "History pts awarded" /                                                
   SAFE                                                                     
   0 "Not applied"                                                          
   1 "Applied" /                                                            
   NEWRACE                                                                  
   1 "White"                                                                
   2 "Black"                                                                
   3 "Hispanic"                                                             
   6 "Other" /                                                              
   PRISDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   PROBDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   SUPRDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   COMDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   HOMDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   INTDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   ALTDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   DAYSDUM                                                                  
   .0000 "None beyond TOTPRISN"                                             
   1.0000 "1 mo add to TOTPRISN" /                                          
   SENTTOT                                                                  
   470.00 "Life"                                                            
   990.00 "990 months or more" /                                            
   SENTTOT0                                                                 
   .00 "Probation"                                                          
   470.00 "Life"                                                            
   990.00 "990 months or more" /                                            
   ALTMO                                                                    
   97 "Not specified" /                                                     
   SENSPLT                                                                  
   470.00 "Life"                                                            
   990.00 "990 months or more" /                                            
   SENSPLT0                                                                 
   .00 "Probation"                                                          
   470.00 "Life"                                                            
   990.00 "990 months or more" /                                            
   SENTIMP                                                                  
   0 "None (fine only)"                                                     
   1 "Prison only(no alts)"                                                 
   2 "Prison + confinement"                                                 
   3 "Probatn + confinemnt"                                                 
   4 "Probation only" /                                                     
   BODINJ                                                                   
   0 "No(includes missing)"                                                 
   1 "Yes" /                                                                
   NEWCIT                                                                   
   0 "U.S."                                                                 
   1 "Non-U.S." /                                                           
   GLMIN                                                                    
   990 "All valid above 989"                                                
   993 "Mult gdline ranges"                                                 
   994 "No analogous gdline"                                                
   995 "18.924(c) only cases"                                               
   996 "Life imprisonment" /                                                
   GLMAX                                                                    
   990 "All valid above 989"                                                
   993 "Mult gdline ranges"                                                 
   994 "No analogous gdline"                                                
   995 "18.924(c) only cases"                                               
   996 "Life imprisonment" /                                                
   IS924C                                                                   
   0 "No 18.924(c) charges"                                                 
   1 "At Least One" /                                                       
   RANGEPT                                                                  
   1 "Guideline minimum"                                                    
   2 "Lower half of range"                                                  
   3 "Midpoint of range"                                                    
   4 "Upper half of range"                                                  
   5 "Guideline maximum" /                                                  
   FINECDUM                                                                 
   0 "No amt specified"                                                     
   1 "Fine/cost specified" /                                                
   COSTSDUM                                                                 
   0 "No amount given"                                                      
   1 "Amount given" /                                                       
   RESTDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   TYPEMONY                                                                 
   1 "None ordered"                                                         
   2 "Restitution ordered"                                                  
   3 "Fine/cost of suprvsn"                                                 
   4 "Both fine/cost& resti" /                                              
   AMTFINEC                                                                 
   0 "None ordered" /                                                       
   AMTREST                                                                  
   0 "No restitutn ordered" /                                               
   AMTTOTAL                                                                 
   0 "No fine/cost/restit" /                                                
   ECONDUM                                                                  
   0 "Neither"                                                              
   1 "Any combination" /                                                    
   NEWEDUC                                                                  
   1 "Less than H.S. grad"                                                  
   3 "H.S. graduate"                                                        
   5 "Some college"                                                         
   6 "College graduate" /                                                   
   ZONE                                                                     
   "A"  "Zone A"                                                            
   "B"  "Zone B"                                                            
   "C"  "Zone C"                                                            
   "D"  "Zone D"                                                            
   "Z"  "Missing" /                                                         
   INOUT                                                                    
   0 "Recvd prison sentnce"                                                 
   1 "Recvd non-prison sen" /                                               
   TIMESERV                                                                 
   .00 "None/less than 1 mo"                                                
   996.00 "Life sentence"                                                   
   997.00 "No term specified" /                                             
   WEAPSOC                                                                  
   0 "No SOC wpn enhancmnt"                                                 
   1 "SOC weapon enhancmnt" /                                               
   WEAPON                                                                   
   0 "None present"                                                         
   1 "Charge present" /                                                     
   MWEIGHT                                                                  
   .00 "No wgts/unit inappl" /                                              
   UTO1                                                                     
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UTO2                                                                     
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UTO3                                                                     
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UTO4                                                                     
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UTO5                                                                     
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UFROM1                                                                   
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UFROM2                                                                   
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UFROM3                                                                   
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UFROM4                                                                   
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   UFROM5                                                                   
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   MWGT1                                                                    
   .00 "No wgts/unit inappl" /                                              
   DRGAM1                                                                   
   7777777.78 "Ambiguous amount"                                            
   10000000.00 "Range" /                                                    
   UNIT1                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   DUTO1                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   DUFROM1                                                                  
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   MWGT2                                                                    
   .00 "No wgts/unit inappl" /                                              
   DRGAM2                                                                   
   7777777.78 "Ambiguous amount"                                            
   10000000.00 "Range" /                                                    
   UNIT2                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   DUTO2                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   DUFROM2                                                                  
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   MWGT3                                                                    
   .00 "No wgts/unit inappl" /                                              
   DRGAM3                                                                   
   7777777.78 "Ambiguous amount"                                            
   10000000.00 "Range" /                                                    
   UNIT3                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   DUTO3                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   DUFROM3                                                                  
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   MWGT4                                                                    
   .00 "No wgts/unit inappl" /                                              
   DRGAM4                                                                   
   7777777.78 "Ambiguous amount"                                            
   10000000.00 "Range" /                                                    
   UNIT4                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   DUTO4                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   DUFROM4                                                                  
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   MWGT5                                                                    
   .00 "No wgts/unit inappl" /                                              
   DRGAM5                                                                   
   7777777.78 "Ambiguous amount"                                            
   10000000.00 "Range" /                                                    
   UNIT5                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other"                                                               
   97 "Unit range" /                                                        
   DUTO5                                                                    
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   DUFROM5                                                                  
   1 "Gram"                                                                 
   2 "Kilogram"                                                             
   3 "Pound"                                                                
   4 "Ounce"                                                                
   5 "Plant"                                                                
   6 "Dose"                                                                 
   7 "Gallon"                                                               
   8 "Quart"                                                                
   9 "Liter"                                                                
   10 "Milligram"                                                           
   11 "Grain"                                                               
   77 "Other" /                                                             
   COMBDRG2                                                                 
   1 "Cocaine"                                                              
   2 "Crack"                                                                
   3 "Heroin"                                                               
   4 "Marijuana"                                                            
   6 "Methamphetamine"                                                      
   8 "LSD"                                                                  
   77 "Other" /                                                             
   DRUGPROB                                                                 
   0 "No problem"                                                           
   1 "Problem exists" /                                                     
   INRANGE                                                                  
   0 "Sentnce out of range"                                                 
   1 "See codebook"                                                         
   2 "See codebook" /.                                                      
