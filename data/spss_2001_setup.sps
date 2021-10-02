*-------------------------------------------------------------------------*
 |             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 3497             |
 |                                                                        |
 |             MONITORING OF FEDERAL CRIMINAL SENTENCES, 2001             |
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
 *------------------------------------------------------------------------.
                                                                           
* SPSS FILE HANDLE, DATA LIST COMMANDS.                                    
                                                                           
FILE HANDLE DATA / NAME="file-specification" LRECL=1120.                   
DATA LIST FILE=DATA /                                                      
   ABERTXT 1-52 (A)         REASTXT1 53-150 (A)      REASTXT2 151-209 (A)  
   REASTXT3 210-239 (A)     USSCIDN 240-245          DEPART 246-246        
   DISPOSIT 247-247         DSJANDC 248-248          ACCTRESP 249-250      
   TYPEOTHS 251-252         DSPLEA 253-253           POOFFICE 254-254 (A)  
   MONOFFTP 255-256         PROBATN 257-258          ACCGDLN 259-259       
   DSPSR 260-260            RESNTDOC 261-262         SCRNOUT 263-263       
   SENTDATE 264-271         FINE 272-281             TOTREST 282-290       
   COSTSUP 291-300          DISTRICT 301-302         DSSOR 303-303         
   RECDATE 304-311          AMENDYR 312-315          ACCAP 316-316         
   CAROFFAP 317-317         CITWHERE 318-320         MOCOMCON 321-322      
   HRCOMSRV 323-326         CITIZEN 327-327          NUMDEPEN 328-329      
   DEFENNUM 330-332         DEFCONSL 333-334         EDUCATN 335-336       
   ENCRYPT1 337-337         ENCRYPT2 338-338         FINEWAIV 339-339      
   MOHOMDET 340-341         HISPORIG 342-342         MOINTCON 343-344      
   SOURCES 345-345          MARRIED 346-346          COADJLEV 347-348      
   TOTUNIT 349-351 (1)      PRESENT 352-352          CRIMHIST 353-353      
   TOTDAYS 354-355          TOTPRISN 356-358         XCRHISSR 359-359      
   TOTCHPTS 360-361         XMAXSOR 362-364          XMINSOR 365-367       
   XFOLSOR 368-369          STATMAX 370-373          STATMIN 374-377       
   SPECASSM 378-382         SUPREL 383-385           ACCCAT 386-386        
   MONRACE 387-387          DOB 388-395              MONSEX 396-396        
   DSIND 397-397            DSAPPEAL 398-398         ABERCASE 399-399 (A)  
   POINT1 400-400           POINT2 401-402           POINT3 403-404        
   SENTPTS 405-405          REL2PTS 406-406          VIOL1PTS 407-407      
   CAROFFLV 408-409         CRIMLIV 410-411          ACCOFFLV 412-413      
   REASON1 414-416          REASON2 417-419          REASON3 420-422       
   NOCOMP 423-424           GDSTATHI 425-430 (A)     GDLINEHI 431-436 (A)  
   ADJOFLHI 437-438         BASEHI 439-440           ADJ_BHI 441-442       
   ADJ_CHI 443-445          ADJ_DHI 446-447          ADJ_EHI 448-449       
   ADJ_FHI 450-451          ADJ_GHI 452-453          ADJ_HHI 454-455       
   ADJ_IHI 456-456          ABUSHI 457-457           AGGROLHI 458-459      
   BASADJHI 460-462         FLIGHTHI 463-463         LOSSHI 464-472        
   MITROLHI 473-474         OBSTRCHI 475-475         OFFVCTHI 476-476      
   RSTRVCHI 477-477         TERORHI 478-479          USKIDHI 480-480       
   VULVCTHI 481-481         VCTADJHI 482-482         ROLADJHI 483-483      
   GDREFHI 484-489 (A)      BASERHI 490-491          ADJR_BHI 492-493      
   ADJR_CHI 494-496         ADJR_DHI 497-498         ADJR_EHI 499-500      
   ADJR_FHI 501-501         ADJR_GHI 502-503         ADJR_HHI 504-504      
   ADJR_IHI 505-505         ABUSRHI 506-506          AGGRLRHI 507-507      
   BASADRHI 508-509         FLGHTRHI 510-510         LOSSRHI 511-519       
   MITRLRHI 520-521         OBSTRRHI 522-522         OFFVCRHI 523-523      
   RSTRVRHI 524-524         TERORRHI 525-525         USKIDRHI 526-526      
   VULVCRHI 527-527         VCADJRHI 528-528         RLADJRHI 529-529      
   ADJOFRHI 530-531         NOCOUNTS 532-534         NWSTAT1 535-547 (A)   
   NWSTAT2 548-560 (A)      NWSTAT3 561-572 (A)      NWSTAT4 573-585 (A)   
   NWSTAT5 586-597 (A)      NWSTAT6 598-609 (A)      NWSTAT7 610-621 (A)   
   NWSTAT8 622-631 (A)      NWSTAT9 632-642 (A)      NWSTAT10 643-653 (A)  
   NWSTAT11 654-663 (A)     NWSTAT12 664-674 (A)     NWSTAT13 675-685 (A)  
   NWSTAT14 686-695 (A)     NWSTAT15 696-706 (A)     NWSTAT16 707-716 (A)  
   NWSTAT17 717-727 (A)     NOUSTAT 728-729          OFFTYPE2 730-731      
   GUNMIN1 732-734          GUNMIN2 735-737          DRUGMIN 738-741       
   AGE 742-743              YEARS 744-744            NEWCNVTN 745-745      
   CRIMPTS 746-747          CRPTS 748-748            SAFE 749-749          
   NEWRACE 750-750          PRISDUM 751-751          PROBDUM 752-752       
   SUPRDUM 753-753          COMDUM 754-754           HOMDUM 755-755        
   INTDUM 756-756           ALTDUM 757-757           DAYSDUM 758-760 (1)   
   SENTTOT 761-763          SENTTOT0 764-766         ALTMO 767-768         
   SENSPLT 769-771          SENSPLT0 772-774         SENTIMP 775-775       
   CHAP2 776-777            CIRCDIST 778-779         MONCIRC 780-781       
   NEWCIT 782-782           GLMIN 783-785            GLMAX 786-788         
   IS924C 789-789           DEQUART 790-791          RANGEPT 792-792       
   FINECDUM 793-793         COSTSDUM 794-794         RESTDUM 795-795       
   TYPEMONY 796-796         AMTFINEC 797-803         AMTREST 804-812       
   AMTTOTAL 813-821         ECONDUM 822-822          NEWEDUC 823-823       
   ZONE 824-824 (A)         INOUT 825-825            TIMESERV 826-828      
   WEAPSOC 829-829          WEAPON 830-830           MWEIGHT 831-838       
   UTO1 839-840             UTO2 841-841             UTO3 842-842          
   UTO4 843-843             UTO5 844-844             UFROM1 845-846        
   UFROM2 847-847           UFROM3 848-848           UFROM4 849-849        
   UFROM5 850-850           MWGT1 851-858            DRUGTYP1 859-861      
   WGT1 862-873 (2)         DRGAM1 874-885 (4)       UNIT1 886-887         
   DATO1 888-899 (4)        DAFROM1 900-911 (4)      DUTO1 912-913         
   DUFROM1 914-915          MWGT2 916-923            DRUGTYP2 924-926      
   WGT2 927-938 (2)         DRGAM2 939-950 (4)       UNIT2 951-952         
   DATO2 953-959            DAFROM2 960-971 (4)      DUTO2 972-972         
   DUFROM2 973-973          MWGT3 974-981            DRUGTYP3 982-984      
   WGT3 985-996 (2)         DRGAM3 997-1008 (4)      UNIT3 1009-1010       
   DATO3 1011-1022 (4)      DAFROM3 1023-1034 (4)    DUTO3 1035-1035       
   DUFROM3 1036-1036        MWGT4 1037-1044          DRUGTYP4 1045-1047    
   WGT4 1048-1059 (2)       DRGAM4 1060-1071 (4)     UNIT4 1072-1072       
   DATO4 1073-1073          DAFROM4 1074-1074        DUTO4 1075-1075       
   DUFROM4 1076-1076        MWGT5 1077-1084          DRUGTYP5 1085-1087    
   WGT5 1088-1099 (2)       DRGAM5 1100-1111 (4)     UNIT5 1112-1113       
   DATO5 1114-1114          DAFROM5 1115-1115        DUTO5 1116-1116       
   DUFROM5 1117-1117        COMBDRG2 1118-1119       INRANGE 1120-1120.    
                                                                           
* SPSS VARIABLE LABELS COMMAND.                                            
                                                                           
VARIABLE LABELS                                                            
   ABERTXT "TEXT DESCRIPTION OF ABBERRATIONS"                              
   REASTXT1 "REASONS FOR DEPARTURE NOT IN REASON1"                         
   REASTXT2 "REASONS FOR DEPARTURE NOT IN REASON2"                         
   REASTXT3 "REASONS FOR DEPARTURE NOT IN REASON3"                         
   USSCIDN "UNIQUE CASE NUMBER"                                            
   DEPART "DEFENDANT'S DEPARTURE STATUS"                                   
   DISPOSIT "DISPOSITION OF DEFENDANT'S CASE"                              
   DSJANDC "DOCUMENT STATUS FOR JUDGMENT AND CONVICT"                      
   ACCTRESP "NUM LEVELS SUBTR DUE TO ACCEPTANCE OF RE"                     
   TYPEOTHS "OTHER TYPES OF SENTENCES ORDERED"                             
   DSPLEA "DOCUMENT STATUS FOR PLEA"                                       
   POOFFICE "CODE FOR PSR PREPARATN PROBATION OFFIC3"                      
   MONOFFTP "OFFENS TYPE DETERMND BY MONITORING CODER"                     
   PROBATN "TOTAL PROBATION ORDERED IN MONTHS"                             
   ACCGDLN "ACCEPTANCE, FINDINGS & GUIDELNE FACTORS"                       
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
   AMENDYR "GUIDELINE AMENDMENT YR USED IN CALCULATN"                      
   ACCAP "ARMED CAREER CRIMINAL STATUS APPLIED"                            
   CAROFFAP "CAREER OFFENDER STATUS APPLIED"                               
   CITWHERE "DEF'S COUNTRY OF CITIZENSHIP IF NOT U.S."                     
   MOCOMCON "TERM OF COMMUNITY CONFINMNT ORDRD (MONTHS)"                   
   HRCOMSRV "NUMBER OF COMMUNITY SERVICE HRS ORDERED"                      
   CITIZEN "NATURE OF DEFENDANT'S CITIZENSHIP"                             
   NUMDEPEN "NUM DEPENDENTS WHOM DFNDT SUPPORTS"                           
   DEFENNUM "DEFENDANT'S NUMBER"                                           
   DEFCONSL "TYPE OF DEFENSE COUNSEL USED IN INSTANT"                      
   EDUCATN "DEFENDANT'S HIGHEST LEVEL OF EDUCATION"                        
   ENCRYPT1 "USE OF ENCRYPTION OR SCRAMBLING TECHNOLO"                     
   ENCRYPT2 "POINTS ASSESSED UNDER OBSTRUCTION OF JUS"                     
   FINEWAIV "WHETHER FINE (OR PORTION) WAS WAVED"                          
   MOHOMDET "TERM OF HOME DETENTION ORDERED IN MOS."                       
   HISPORIG "DEFENDANT'S ETHNIC ORIGIN"                                    
   MOINTCON "TERM OF INTERMITTENT CONFINEMENT ORDERED"                     
   SOURCES "CODED INFO BASED ON KNOWN COURT FINDINGS"                      
   MARRIED "MARITAL STATUS OF OFFENDER"                                    
   COADJLEV "COMBINED ADJUSTED OFFENSE LEVEL SUBTOTAL"                     
   TOTUNIT "NO. UNITS USED TO CALCULAT OFFENS LVL AD"                      
   PRESENT "OFFENDER'S PRE-SENTENCE DETENTION STATUS"                      
   CRIMHIST "DOES DEFENDANT HAVE ANY CRIMINAL HISTORY"                     
   TOTDAYS "TOTAL DAYS OF IMPRISONMENT ORDERED"                            
   TOTPRISN "TOTAL MONTHS OF IMPRISONMENT ORDERED"                         
   XCRHISSR "DEFENDANTS FINAL CRIMINAL HSTRY CATEGORY"                     
   TOTCHPTS "TOTAL NUM OF CRIM HIST POINTS APPLIED"                        
   XMAXSOR "MAX GUIDELINE RANGE FOR IMPRISONMENT"                          
   XMINSOR "MIN GUIDELINE RANGE FOR IMPRISONMENT"                          
   XFOLSOR "FINAL OFFENSE LEVEL"                                           
   STATMAX "TOTAL STATUTORY MAX PRISON TERM IN MOS,"                       
   STATMIN "TOTAL STATUTORY MIN PRISON TERM IN MOS,"                       
   SPECASSM "$ VALUE OF SPECIAL ASSESSMENT FEE"                            
   SUPREL "MONTHS OF SUPERVISED RELEASE ORDERED"                           
   ACCCAT "ADJUST IN CASE ACC STATUS AFFECTED PREVI"                       
   MONRACE "DEFENDANT'S RACE"                                              
   DOB "DEFENDANT'S DATE OF BIRTH"                                         
   MONSEX "DEFENDANT'S GENDER"                                             
   DSIND "DOCUMENT STATUS FOR INDICTMENT OR INFORM"                        
   DSAPPEAL "DOCUMENT STATUS FOR APPEAL"                                   
   ABERCASE "ABERCASE"                                                     
   POINT1 "NUM ONE-POINT INCIDENTS"                                        
   POINT2 "NUM TWO-POINT INCIDENTS"                                        
   POINT3 "NUM THREE-POINT INCIDENTS"                                      
   SENTPTS "NUM PTS FROM INSTANT OFFENSE"                                  
   REL2PTS "NUM PTS FROM INSTANT OFFENSE < 2 YRS AFT"                      
   VIOL1PTS "NUM PTS FOR EACH PRIOR SENTENCE"                              
   CAROFFLV "LVL IF CHANGE DUE TO CAREER OFFNDER STAT"                     
   CRIMLIV "OFFENSE LVL BASED ON CRIMINAL LIVELIHOOD"                      
   ACCOFFLV "LEVEL IF AFFECTED BY ARMED CAREER CRIMIN"                     
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
   OBSTRCHI "HIGHEST COMPUTATION OF OBSTRCT"                               
   OFFVCTHI "HIGHEST COMPUTATION OF OFFVICT"                               
   RSTRVCHI "HIGHEST COMPUTATION OF RSTRVCT"                               
   TERORHI "HIGHEST COMPUTATION OF TEROR"                                  
   USKIDHI "HIGHEST COMPUTATION OF USKID"                                  
   VULVCTHI "HIGHEST COMPUTATION OF VULVICT"                               
   VCTADJHI "HIGHEST COMPUTATION OF VCTADJ"                                
   ROLADJHI "HIGHEST COMPUTATION OF ROLEADJ"                               
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
   AGGRLRHI "HIGHEST OF AGGROLR"                                           
   BASADRHI "HIGHEST OF BASADR"                                            
   FLGHTRHI "HIGHEST OF FLIGHT"                                            
   LOSSRHI "HIGHEST COMPUTATION OF LOSSGNR"                                
   MITRLRHI "HIGHEST OF MITROLR"                                           
   OBSTRRHI "HIGHEST OF OBSTRCR"                                           
   OFFVCRHI "HIGHEST OF OFFCVTR"                                           
   RSTRVRHI "HIGHEST COMPUTATION OF RSTRVR"                                
   TERORRHI "HIGHEST OF TERORR"                                            
   USKIDRHI "HIGHEST OF USKIDR"                                            
   VULVCRHI "HIGHEST OF VULVCTR"                                           
   VCADJRHI "HIGHEST COMPUTATION OF VCADJR"                                
   RLADJRHI "HIGHEST OF ROLADJR"                                           
   ADJOFRHI "HIGHEST OF ADJOFLR"                                           
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
   DAYSDUM "RECEIPT OF ANY DAYS IN PRISON"                                 
   SENTTOT "TOTAL PRISON SENTENCE IN MOS W/O ZEROS"                        
   SENTTOT0 "TOTAL PRISON SENTENCE IN MOS WITH ZEROS"                      
   ALTMO "CUMULATIVE MONTHS OF ALTERNATIVE INCARCE"                        
   SENSPLT "TOTAL PRISON SENTENCE IN MOS W/O ZEROS"                        
   SENSPLT0 "TOTAL PRISON SENTENCE IN MOS WITH ZEROS"                      
   SENTIMP "TYPE OF SENTENCE"                                              
   CHAP2 "BASE OFFENSE LEVEL PLUS CHAPTER TWO SOCS"                        
   CIRCDIST "DISTRICTS (ORDER OF APPEARANCE IN ANNUAL"                     
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
   TIMESERV "MIN PRISION TIME THE DEFENDANT WILL SERV"                     
   WEAPSOC "SOC ENHANCEMENT FOR A WEAPON PRESENT"                          
   WEAPON "SOC WEAPON ENHANCEMENT OR CONVICTION"                           
   MWEIGHT "MARIJUANA WGT EQUIVAL (IN GRAMS) OF OTHE"                      
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
   MWGT1 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                        
   DRUGTYP1 "INDICATOR OF 1ST TYPE OF DRUG"                                
   WGT1 "GRAM AMT OF 1ST DRUG TYPE"                                        
   DRGAM1 "AMOUNT OF 1ST DRUG TYPE"                                        
   UNIT1 "UNIT OF MEASURE FOR 1ST TYPE OF DRUGS"                           
   DATO1 "DRUG WEIGHT RANGE HIGH DRUGTYP1"                                 
   DAFROM1 "DRUG WEIGHT RANGE LOW DRUGTYP1"                                
   DUTO1 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP1"                          
   DUFROM1 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP1"                         
   MWGT2 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                        
   DRUGTYP2 "INDICATOR OF 2ND TYPE OF DRUG"                                
   WGT2 "GRAM AMT OF 2ND DRUG TYPE"                                        
   DRGAM2 "AMOUNT OF 2ND DRUG TYPE"                                        
   UNIT2 "UNIT OF MEASURE FOR 2ND TYPE OF DRUGS"                           
   DATO2 "DRUG WEIGHT RANGE HIGH DRUGTYP2"                                 
   DAFROM2 "DRUG WEIGHT RANGE LOW DRUGTYP2"                                
   DUTO2 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP2"                          
   DUFROM2 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP2"                         
   MWGT3 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                        
   DRUGTYP3 "INDICATOR OF 3RD TYPE OF DRUG"                                
   WGT3 "GRAM AMT OF 3RD DRUG TYPE"                                        
   DRGAM3 "AMOUNT OF 3RD DRUG TYPE"                                        
   UNIT3 "UNIT OF MEASURE FOR 3RD TYPE OF DRUGS"                           
   DATO3 "DRUG WEIGHT RANGE HIGH DRUGTYP3"                                 
   DAFROM3 "DRUG WEIGHT RANGE LOW DRUGTYP3"                                
   DUTO3 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP3"                          
   DUFROM3 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP3"                         
   MWGT4 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                        
   DRUGTYP4 "INDICATOR OF 4TH TYPE OF DRUG"                                
   WGT4 "GRAM AMT OF 4TH DRUG TYPE"                                        
   DRGAM4 "AMOUNT OF 4TH DRUG TYPE"                                        
   UNIT4 "UNIT OF MEASURE FOR 4TH TYPE OF DRUGS"                           
   DATO4 "DRUG WEIGHT RANGE HIGH DRUGTYP4"                                 
   DAFROM4 "DRUG WEIGHT RANGE LOW DRUGTYP4"                                
   DUTO4 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP4"                          
   DUFROM4 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP4"                         
   MWGT5 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                        
   DRUGTYP5 "INDICATOR OF 5TH TYPE OF DRUG"                                
   WGT5 "GRAM AMT OF 5TH DRUG TYPE"                                        
   DRGAM5 "AMOUNT OF 5TH DRUG TYPE"                                        
   UNIT5 "UNIT OF MEASURE FOR 5TH TYPE OF DRUGS"                           
   DATO5 "DRUG WEIGHT RANGE HIGH DRUGTYP5"                                 
   DAFROM5 "DRUG WEIGHT RANGE LOW DRUGTYP5"                                
   DUTO5 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP5"                          
   DUFROM5 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP5"                         
   COMBDRG2 "AGGREGATION OF COMBDRG1"                                      
   INRANGE "CASE SENTENCED W/IN GUIDELINE RANGE".                          
                                                                           
* SPSS VALUE LABELS COMMAND.                                               
                                                                           
VALUE LABELS                                                               
   DEPART                                                                  
   0 "No Departure"                                                        
   1 "Upward Departure"                                                    
   2 "Downward Departure"                                                  
   3 "Substantial Assistance"                                              
   8 "Inapplicable" /                                                      
   DISPOSIT                                                                
   1 "Guilty Plea"                                                         
   2 "Nolo Contendere"                                                     
   3 "Jury Trial"                                                          
   4 "Trial by Judge or Bench Trial"                                       
   5 "Both Guilty Plea and Trial (>1count)" /                              
   DSJANDC                                                                 
   0 "Not Received"                                                        
   1 "Received J& C"                                                       
   2 "Received Alternate Sentencing Document"                              
   6 "Did Not Receive, Under Court Seal"                                   
   7 "Received, Under Court Seal"                                          
   8 "Order Will Never Be Available" /                                     
   ACCTRESP                                                                
   -4 "Applied (Not In USSG Manual)"                                       
   -3 "Adjustment Applied"                                                 
   -2 "Adjustment Applied"                                                 
   -1 "Applied (Not In USSG Manual)"                                       
   0 "Adjustment Not Applied" /                                            
   TYPEOTHS                                                                
   0 "None"                                                                
   1 "Suspended Prison Term"                                               
   2 "Pay Cost of Prosecution"                                             
   3 "Denial of Federal Benefits"                                          
   77 "Other" /                                                            
   DSPLEA                                                                  
   0 "Not Received"                                                        
   1 "Received Written Agreement"                                          
   2 "Received Alternate Document (e.g. letter"                            
   3 "Oral Plea"                                                           
   4 "Written, Will never be Received"                                     
   6 "Did Not Receive, Under Court Seal"                                   
   7 "Received, Under Court Seal"                                          
   8 "N/A (e.g. Trial)" /                                                  
   POOFFICE                                                                
   "Z"  "Missing" /                                                        
   MONOFFTP                                                                
   1 "Murder"                                                              
   2 "Manslaughter"                                                        
   3 "Kidnapping/Hostage"                                                  
   4 "Sexual Abuse"                                                        
   5 "Assault"                                                             
   6 "Bank Robbery"                                                        
   7 "Other Robbery"                                                       
   8 "Extortion"                                                           
   9 "Arson"                                                               
   10 "Drugs:  Trafficking"                                                
   11 "Drugs:  Communication Facilities"                                   
   12 "Drugs:  Simple Possession"                                          
   13 "Firearms: Use"                                                      
   14 "Firearms: Possession, Trafficking"                                  
   15 "Burglary/Breaking and Entering"                                     
   16 "Auto Theft"                                                         
   17 "Larceny"                                                            
   18 "Fraud"                                                              
   19 "Embezzlement"                                                       
   20 "Forgery/Counterfeiting"                                             
   21 "Bribery"                                                            
   22 "Tax Offenses"                                                       
   23 "Money Laundering"                                                   
   24 "Racketeering"                                                       
   25 "Gambling/Lottery"                                                   
   26 "Civil Rights Offenses"                                              
   27 "Immigration"                                                        
   28 "Pornography/Prostitution"                                           
   29 "Offenses in Prison"                                                 
   30 "Administration of Justice - Related"                                
   31 "Environmental, Game, Fish, and Wildlife"                            
   32 "National Defense Offenses"                                          
   33 "Antitrust Violations"                                               
   34 "Food and Drug Offenses"                                             
   35 "Traffic Violations and Other Offenses"                              
   36 "Other Violent Offenses"                                             
   37 "Other Drug Offenses"                                                
   38 "Other Firearms Offenses"                                            
   39 "Other Property Offenses"                                            
   40 "Other Environmental Offenses"                                       
   41 "Other Miscellaneous Offenses"                                       
   99 "Missing" /                                                          
   PROBATN                                                                 
   0 "No Probation Ordered"                                                
   97 "Probation Ordered But No Term Specified" /                          
   ACCGDLN                                                                 
   0 "Court DOES NOT Accept"                                               
   1 "Court DOES Accept"                                                   
   8 "Inapplicable" /                                                      
   DSPSR                                                                   
   0 "Not Received"                                                        
   1 "Received PSR"                                                        
   2 "Received Alternate Document"                                         
   6 "Did Not Receive, Under Court Seal"                                   
   7 "Received, Under Court Seal"                                          
   8 "Waived/Will Never Receive" /                                         
   RESNTDOC                                                                
   0 "No Resentencing Documents Received"                                  
   1 "Amended Sentence Received (No Specific R"                            
   2 "Corrected Sentence Received (No Specific"                            
   3 "Modified Sentence Received (No Specific"                             
   4 "Correction of Sentence on Remand (FRCP 3"                            
   5 "Reduct of Sent for Circs: Substan Assis"                             
   6 "Correct for Arith, Cler or Tech Reas (FR"                            
   7 "Mod of Supervision Conditions (18..3563c"                            
   8 "Mod of Term of Impris for Extr. Reasons"                             
   9 "Mod of Term of Impris for Retroactive Am"                            
   10 "Motion to Vacate or Set Aside Sentence ("                           
   11 "Resentencing or Mandatory Life Imprisonm"                           
   12 "Modification of Restitution Order (18..3"                           
   13 "Other Documents Received"                                           
   14 "Docs Sealed, Not Received"                                          
   15 "Docs Sealed, Received" /                                            
   SCRNOUT                                                                 
   0 "Not Screened Out"                                                    
   1 "All Counts Involve Petty Offenses"                                   
   2 "All Counts Involve Offense Prior to 11/1"                            
   3 "Diversionary Sentence Ordered" /                                     
   FINE                                                                    
   0 "No fine"                                                             
   999999997 "Fine Ordered, Amt Not Specified" /                           
   TOTREST                                                                 
   0 "None"                                                                
   999999997 "Restitution Ordered, Amt Not Specified" /                    
   COSTSUP                                                                 
   0 "No Cost Specified"                                                   
   999997 "Total Cost Ord, No Amt Specified" /                             
   DSSOR                                                                   
   0 "Not Received"                                                        
   1 "Received SOR Form"                                                   
   2 "Received Transcript or Partial SOR"                                  
   6 "Did Not Receive, Under Court Seal"                                   
   7 "Received, Under Court Seal"                                          
   8 "N/A (e.g. Not Ordered)" /                                            
   AMENDYR                                                                 
   87 "1987 Guidelines Manual"                                             
   88 "1988 Guidelines Manual"                                             
   89 "1989 Guidelines Manual"                                             
   90 "1990 Guidelines Manual"                                             
   91 "1991 Guidelines Manual"                                             
   92 "1992 Guidelines Manual"                                             
   93 "1993 Guidelines Manual"                                             
   94 "1994 Guidelines Manual"                                             
   95 "1995 Guidelines Manual"                                             
   96 "1996 Guidelines Manual"                                             
   97 "1997 Guidelines Manual"                                             
   98 "1998 Guidelines Manual" /                                           
   ACCAP                                                                   
   0 "Not Applied"                                                         
   1 "Applied" /                                                           
   CAROFFAP                                                                
   0 "No, Career Offender Status Not Applied"                              
   1 "Yes, Career Offender Applied" /                                      
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
   36 "Gr Britain/UK/England"                                              
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
   60 "Vietnam (North/South)"                                              
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
   110 "Bosnia and Herzegovina"                                            
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
   148 "Libyan Arab Jamahiriya"                                            
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
   178 "Saint Vincent/Grenadines"                                          
   179 "Samoa"                                                             
   180 "San Marino"                                                        
   181 "Sao Tomo and Principe"                                             
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
   0 "No Community Confinement Ordered"                                    
   97 "Comm Confinement Ordered But No Term Spe" /                         
   HRCOMSRV                                                                
   9997 "Comm Service Ordered, Term Not Specified" /                       
   CITIZEN                                                                 
   1 "United States Citizen"                                               
   2 "Resident/Legal Alien"                                                
   3 "Illegal Alien"                                                       
   4 "Not a US Citizen/Alien Status Unknown" /                             
   NUMDEPEN                                                                
   0 "No Dependents"                                                       
   97 "Some Dependents, Exact Number Unknown" /                            
   DEFCONSL                                                                
   1 "Privately Retained Counsel"                                          
   2 "Court Appointed Counsel"                                             
   3 "Federal Public Defender"                                             
   4 "Defendant Represented Self"                                          
   5 "Waived Rights to Counsel"                                            
   77 "Other Arrangements for Counsel" /                                   
   EDUCATN                                                                 
   0 "No Schooling"                                                        
   1 "One Yr School Completed"                                             
   2 "Two Yr School Completed"                                             
   3 "Three Yr School Completed"                                           
   4 "Four Yr School Completed"                                            
   5 "Five Yr School Completed"                                            
   6 "Six Yr School Completed"                                             
   7 "Seven Yr School Completed"                                           
   8 "Eight Yr School Completed"                                           
   9 "Nine Yr School Completed"                                            
   10 "Ten Yr School Completed"                                            
   11 "Eleven Yr School Completed"                                         
   12 "High School Graduate"                                               
   13 "One Year Of College /Freshman"                                      
   14 "Two Years Of College /Sophomore"                                    
   15 "Three Years Of College /Junior"                                     
   16 "College Graduate"                                                   
   21 "G.E.D. (General Education Diploma)"                                 
   22 "Trade Or Vocational Degree"                                         
   23 "Associate Degree (A.A.)"                                            
   24 "Grad Degree (Mst, J.D., M.D., Ph.D., etc"                           
   31 "Some Elementary School"                                             
   32 "Some High School"                                                   
   33 "Some Trade or Vocational School"                                    
   34 "Some College"                                                       
   35 "Some Graduate School"                                               
   36 "Military Training"                                                  
   37 "Middle School /Junior High" /                                       
   ENCRYPT1                                                                
   0 "No"                                                                  
   1 "Yes" /                                                               
   ENCRYPT2                                                                
   0 "No"                                                                  
   1 "Yes" /                                                               
   FINEWAIV                                                                
   0 "No Waiver Stated"                                                    
   1 "Waiver Specifically Stated"                                          
   9 "Relevant Documents Missing" /                                        
   MOHOMDET                                                                
   0 "No Home Detention ordered"                                           
   97 "Home Detentention Ord Term Not Specified" /                         
   HISPORIG                                                                
   1 "Non-Hispanic"                                                        
   2 "Hispanic" /                                                          
   MOINTCON                                                                
   0 "No Intermittent Confinement Ordered"                                 
   97 "Intermittent Confinement Ord No Term Spe" /                         
   SOURCES                                                                 
   1 "Info Repr KNOWN COURT"                                               
   2 "Post-Sentence Report Received"                                       
   3 "PSR Is Coded (Insuff SOR)"                                           
   5 "PSR Is Coded (No SOR)"                                               
   6 "Sec 18 Par924(c) Only"                                               
   8 "No Analogous Guideline"                                              
   9 "PSR Waived, Missing, or Multiple OFfense" /                          
   MARRIED                                                                 
   1 "Single"                                                              
   2 "Married"                                                             
   3 "Cohabitating (not legally married)"                                  
   4 "Divorced"                                                            
   5 "Widowed"                                                             
   6 "Separated" /                                                         
   PRESENT                                                                 
   1 "In Custody"                                                          
   2 "Out on Bail/Bond"                                                    
   3 "Released on Own Recognizance"                                        
   4 "Other" /                                                             
   CRIMHIST                                                                
   0 "No Criminal History"                                                 
   1 "Yes, There Is Criminal History" /                                    
   TOTDAYS                                                                 
   0 "None"                                                                
   90 "990 mo or More"                                                     
   91 "Time Served"                                                        
   92 "Less Than 1 Day Imprisonment"                                       
   96 "Life Imprisonment Ordered"                                          
   97 "Prison Ordered But Term Not Specified"                              
   98 "Death Sentence" /                                                   
   TOTPRISN                                                                
   0 "No Prison or < 1 Month Ordered"                                      
   990 "990 mo or More"                                                    
   991 "Time Served"                                                       
   992 "Less Than 1 Day Imprisonment"                                      
   996 "Life Imprisonment Ordered"                                         
   997 "Prison Ordered But No Term Specified"                              
   998 "Death Sentence" /                                                  
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
   SUPREL                                                                  
   0 "No Supervised Release Ordered"                                       
   996 "Life Term Ordered"                                                 
   997 "Supv Rel Ordered, No Term Specified" /                             
   ACCCAT                                                                  
   4 "Category IV"                                                         
   5 "Category V"                                                          
   6 "CAtegory VI" /                                                       
   MONRACE                                                                 
   1 "White/Caucasian"                                                     
   2 "Black"                                                               
   3 "American Indian or Alaskan Native"                                   
   4 "Asian or Pacific Islander"                                           
   5 "Multi-racial"                                                        
   7 "Other" /                                                             
   MONSEX                                                                  
   0 "Male"                                                                
   1 "Female" /                                                            
   DSIND                                                                   
   0 "Not Received"                                                        
   1 "Received Indictment"                                                 
   2 "Received Information"                                                
   3 "Other Charging Document Received"                                    
   6 "Not Received, Under Court Seal"                                      
   7 "Received, Under Court Seal"                                          
   8 "Indictment Will Never Be Available" /                                
   DSAPPEAL                                                                
   0 "Not Received"                                                        
   1 "Received Appeal"                                                     
   6 "Not Received, Under Court Seal"                                      
   7 "Received, Under Court Seal" /                                        
   ABERCASE                                                                
   "0"  "Not abberrant"                                                    
   "1"  "Has abberrations" /                                               
   POINT1                                                                  
   0 "None" /                                                              
   POINT2                                                                  
   0 "None" /                                                              
   POINT3                                                                  
   0 "None" /                                                              
   SENTPTS                                                                 
   0 "None"                                                                
   1 "Adjust Applied (Not in Gdlines)"                                     
   2 "Adjustment Applied" /                                                
   REL2PTS                                                                 
   0 "None"                                                                
   1 "Adj For Offense < 2 Yr Aft Release"                                  
   2 "Adj For Comm Of Offense < 2 Yr Aft Rel" /                            
   VIOL1PTS                                                                
   0 "No Points Applied"                                                   
   4 "4 Pts Added (Not In Manuals)"                                        
   5 "5 Pts Added (Not In Manuals)" /                                      
   CRIMLIV                                                                 
   0 "Defendant Does Not Earn A Living From th" /                          
   REASON1                                                                 
   0 "No Reason Given"                                                     
   998 "Inapplicable" /                                                    
   REASON2                                                                 
   0 "No Reason Given"                                                     
   998 "Inapplicable" /                                                    
   REASON3                                                                 
   0 "No Reason Given"                                                     
   998 "Inapplicable" /                                                    
   ADJ_BHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_CHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_DHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_EHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_FHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_GHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_HHI                                                                 
   0 "No Adjustment Applied" /                                             
   ADJ_IHI                                                                 
   0 "No Adjustment Applied" /                                             
   ABUSHI                                                                  
   0 "Adjustment Not Applied"                                              
   1 "Increase (Not in USSG Manual)"                                       
   2 "Abuse Applied"                                                       
   3 "Increase (Not in USSG Manual)" /                                     
   AGGROLHI                                                                
   0 "No Adjustment Applied"                                               
   1 "Applied-Not In Gdlins)"                                              
   2 "Applied-Mgr/Org/Sup/Ldr"                                             
   3 "Applied-Mgr/Sup of 5+"                                               
   4 "Applied-Ldr/Org of 5+" /                                             
   FLIGHTHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied" /                                                
   LOSSHI                                                                  
   999999997 "Range of Amounts" /                                          
   MITROLHI                                                                
   -6 "Adjustment (Not In USSG Manual)"                                    
   -4 "Minimal Participation"                                              
   -3 "Btwn Minr and Mnml Partic"                                          
   -2 "Minor Participation"                                                
   -1 "Adjustment (Not In USSG Manual)"                                    
   0 "No adjustment" /                                                     
   OBSTRCHI                                                                
   0 "No Adjustment"                                                       
   1 "Adjustment (Not In Guidelines)"                                      
   2 "Adjustment Applied" /                                                
   OFFVCTHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied"                                                  
   3 "Adjustment Applied" /                                                
   RSTRVCHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied" /                                                
   TERORHI                                                                 
   0 "No Adjustment Applied" /                                             
   USKIDHI                                                                 
   0 "No Adjustment Applied"                                               
   2 "Adjustment Applied" /                                                
   VULVCTHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment For Vulnerable Victim"                                    
   3 "Adjustment For Hate Crime"                                           
   5 "Adjustment For Both Hate Crime and Vulne" /                          
   VCTADJHI                                                                
   0 "No Adjustment Applied"                                               
   1 "Adjustment applied" /                                                
   ROLADJHI                                                                
   0 "No Role Adjustment(s) Given"                                         
   1 "Role Adjustment(s) Given" /                                          
   ADJR_BHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_CHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_DHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_EHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_FHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_GHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_HHI                                                                
   0 "No Adjustment Applied" /                                             
   ADJR_IHI                                                                
   0 "No Adjustment Applied" /                                             
   ABUSRHI                                                                 
   0 "Adjustment Not Applied"                                              
   1 "Increase (Not in USSG Manual)"                                       
   2 "Abuse Applied"                                                       
   3 "Increase (Not in USSG Manual)" /                                     
   AGGRLRHI                                                                
   0 "No Adjustment Applied"                                               
   1 "Applied (Not In Guidelines)"                                         
   2 "Adj Applied (Mgr, Organizer, Super Of 5+"                            
   3 "Adj Applied (Mgr Or Supervisor Of 5+ Par"                            
   4 "Adj Appl (Leader Or Organizer Of 5+ Part" /                          
   FLGHTRHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied" /                                                
   LOSSRHI                                                                 
   999999997 "Range of amounts" /                                          
   MITRLRHI                                                                
   -6 "Adjustment (Not In USSG Manual)"                                    
   -4 "Minimal Participation"                                              
   -3 "Between Minor and Minimal Partic"                                   
   -2 "Minor Participation"                                                
   -1 "Adjustment (Not In USSG Manual)"                                    
   0 "No Adjustment" /                                                     
   OBSTRRHI                                                                
   0 "No Adjustment"                                                       
   1 "Adjustment -Not in Gdlns)"                                           
   2 "Adjustment Applied" /                                                
   OFFVCRHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied (Not In Guidelines)"                              
   3 "Adjust Applied" /                                                    
   RSTRVRHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment Applied" /                                                
   TERORRHI                                                                
   0 "No Adjustment Applied" /                                             
   USKIDRHI                                                                
   0 "No Adjustment Aplied"                                                
   2 "Adjustment Applied" /                                                
   VULVCRHI                                                                
   0 "No Adjustment"                                                       
   2 "Adjustment For Vulnerable Victim"                                    
   3 "Adjust For Hate Crime"                                               
   5 "Adjust For Both Hate Crime And Vulnerabl" /                          
   VCADJRHI                                                                
   0 "No Adjustment Applied"                                               
   1 "Adjustment applied" /                                                
   RLADJRHI                                                                
   0 "No Role Adjustment(s) Given"                                         
   1 "Yes Role Adjustment(s) Given" /                                      
   OFFTYPE2                                                                
   1 "Murder"                                                              
   2 "Manslaughter"                                                        
   3 "Kidnaping /Hostage"                                                  
   4 "Sexual Abuse"                                                        
   5 "Assault"                                                             
   6 "Bank Robbery (includes OFFTYPE 7, other"                             
   9 "Arson"                                                               
   10 "Drugs: Trafficking"                                                 
   11 "Drugs: Communication Facilities"                                    
   12 "Drugs: Simple Possession"                                           
   13 "Firearms: Use (includes OFFTYPE 14, Fire"                           
   15 "Burglary/Breaking and Entering"                                     
   16 "Auto Theft"                                                         
   17 "Larceny"                                                            
   18 "Fraud"                                                              
   19 "Embezzlement"                                                       
   20 "Forgery / Counterfeiting"                                           
   21 "Bribery"                                                            
   22 "Tax Offenses"                                                       
   23 "Money Laundering"                                                   
   24 "Racketeering (includes OFFTYPE 8, Extort"                           
   25 "Gambling / Lottery"                                                 
   26 "Civil Rights Offenses"                                              
   27 "Immigration"                                                        
   28 "Pornography / Prostitution"                                         
   29 "Offenses in Prisons"                                                
   30 "Admin of Just-Related"                                              
   31 "Environmental, Game, Fish, and Wildlife"                            
   32 "National Defense Offenses"                                          
   33 "Antitrust Violations"                                               
   34 "Food and Drug Offenses"                                             
   35 "Traffic Violations and Other Offenses" /                            
   GUNMIN1                                                                 
   996 "Life"                                                              
   997 "Further Review" /                                                  
   GUNMIN2                                                                 
   996 "Life"                                                              
   997 "Further Review" /                                                  
   DRUGMIN                                                                 
   996 "Life"                                                              
   997 "Problem Case" /                                                    
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
   0 "No History Points Applied" /                                         
   CRPTS                                                                   
   0 "No Criminal History Points Applied"                                  
   1 "Yes, Criminal History Points" /                                      
   SAFE                                                                    
   0 "Not Applied"                                                         
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
   .0 "No Prison Beyond That Specified in TOTPR"                           
   1.0 "One Month Added to TOTPRISN" /                                     
   SENTTOT                                                                 
   470 "Life"                                                              
   990 "990 Months or More" /                                              
   SENTTOT0                                                                
   0 "Probation"                                                           
   470 "Life"                                                              
   990 "990 Months or More" /                                              
   ALTMO                                                                   
   97 "Alternatives, Not Specified" /                                      
   SENSPLT                                                                 
   470 "Life"                                                              
   990 "990 Months or More" /                                              
   SENSPLT0                                                                
   0 "Probation"                                                           
   470 "Life"                                                              
   990 "990 Months or More" /                                              
   SENTIMP                                                                 
   0 "No Prison/Probation (Fine Only)"                                     
   1 "Prison Only (No Alternatives)"                                       
   2 "Prison + Confinement Conditions"                                     
   3 "Probation + Confinement Conditions"                                  
   4 "Probation Only" /                                                    
   NEWCIT                                                                  
   0 "U.S."                                                                
   1 "Non-U.S. (Legal and Illegal Aliens)" /                               
   GLMIN                                                                   
   990 "All Values Above 989"                                              
   993 "Multiple Guideline Ranges Applied"                                 
   994 "No Analogous Guideline"                                            
   995 "18.924(c) Only Cases"                                              
   996 "Life Imprisonment" /                                               
   GLMAX                                                                   
   990 "All Values Above 989"                                              
   993 "Multiple Guideline Ranges Applied"                                 
   994 "No Analogous Guideline"                                            
   995 "18.924(c) Only Cases"                                              
   996 "Life Imprisonment" /                                               
   IS924C                                                                  
   0 "No 18.924(c) Charges (Includes Missing)"                             
   1 "At Least One 18.924(c) Charge Present" /                             
   RANGEPT                                                                 
   0 "Missing/Logic Problems"                                              
   1 "Guideline Minimum"                                                   
   2 "Lower Half of Range"                                                 
   3 "Midpoint of Range"                                                   
   4 "Upper Half of Range"                                                 
   5 "Guideline Maximum" /                                                 
   FINECDUM                                                                
   0 "No Fine or Cost of Supervision Amt Speci"                            
   1 "Fine/Cost of Supervision Amount Specifie" /                          
   COSTSDUM                                                                
   0 "No Amount Given for Cost of Supervision"                             
   1 "Amount Given for Cost of Supervision" /                              
   RESTDUM                                                                 
   0 "No"                                                                  
   1 "Yes" /                                                               
   TYPEMONY                                                                
   1 "No Fine/Cost of Supervision, Nor Restitu"                            
   2 "Restitution Ordered, No Fine/Cost of Sup"                            
   3 "Fine/Cost of Supervision, No Restitution"                            
   4 "Both Fine/Cost of Supervison and Restitu" /                          
   AMTFINEC                                                                
   0 "No Fine/Cost of Supervision Ordered" /                               
   AMTREST                                                                 
   0 "No Restitution Ordered" /                                            
   AMTTOTAL                                                                
   0 "No Fine/Cost of Supervision or Restituti" /                          
   ECONDUM                                                                 
   0 "Neither Fine/Cost of Supervision or Rest"                            
   1 "Fine/Cost of Supervision, Restitution, o" /                          
   NEWEDUC                                                                 
   1 "Less Than H.S. Graduate"                                             
   3 "H.S. Graduate"                                                       
   5 "Some College"                                                        
   6 "College Graduate" /                                                  
   ZONE                                                                    
   "A"  "Zone A"                                                           
   "B"  "Zone B"                                                           
   "C"  "Zone C"                                                           
   "D"  "Zone D"                                                           
   "Z"  "Missing" /                                                        
   INOUT                                                                   
   0 "Received Prison Sentence"                                            
   1 "Received Non-Prison Sentence" /                                      
   TIMESERV                                                                
   0 "No Months/Less than 1 month"                                         
   996 "Life Sentence"                                                     
   997 "Prison Ordered, but no term specified" /                           
   WEAPSOC                                                                 
   0 "No SOC Weapon Enhancement"                                           
   1 "SOC Weapon Enhancement" /                                            
   WEAPON                                                                  
   0 "No SOC Weap Enhan Nor 18.924(c) Charge P"                            
   1 "SOC Weapon Enhancement or 18.924(c) Char" /                          
   MWEIGHT                                                                 
   0 "No drug weights coded/unit(s) were inapp" /                          
   MWGT1                                                                   
   0 "No drug weights coded/unit(s) were inapp" /                          
   DRGAM1                                                                  
   7777777.7777 "Ambiguous Amount"                                         
   9999999.9997 "Range" /                                                  
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
   97 "Unit Range (e.g. 500G-2KG)" /                                       
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
   0 "No drug weights coded/unit(s) were inapp" /                          
   DRGAM2                                                                  
   7777777.7777 "Ambiguous Amount"                                         
   9999999.9997 "Range" /                                                  
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
   97 "Unit Range (e.g. 500G-2KG)" /                                       
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
   0 "No drug weights coded/unit(s) were inapp" /                          
   DRGAM3                                                                  
   7777777.7777 "Ambiguous Amount"                                         
   9999999.9997 "Range" /                                                  
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
   97 "Unit Range (e.g. 500G-2KG)" /                                       
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
   0 "No drug weights coded/unit(s) were inapp" /                          
   DRGAM4                                                                  
   7777777.7777 "Ambiguous Amount"                                         
   9999999.9997 "Range" /                                                  
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
   97 "Unit Range (e.g. 500G-2KG)" /                                       
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
   0 "No drug weights coded/unit(s) were inapp" /                          
   DRGAM5                                                                  
   7777777.7777 "Ambiguous Amount"                                         
   9999999.9997 "Range" /                                                  
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
   97 "Unit Range (e.g. 500G-2KG)" /                                       
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
   INRANGE                                                                 
   0 "Out of Range"                                                        
   1 "GLMIN<=SENTSPLT0<=GLMAX"                                             
   2 "GLMIN<=SENSPLT0<=GLMIN<=TOTPRISN<=GLMAX" /.                          
