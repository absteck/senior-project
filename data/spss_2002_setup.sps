*-------------------------------------------------------------------------* 
 |             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 4110             | 
 |                                                                        | 
 |             MONITORING OF FEDERAL CRIMINAL SENTENCES, 2002             | 
 |                                                                        | 
 |                         PART 1: MAIN DATA FILE                         | 
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
                                                                            
* SPSS DATA LIST COMMMAND.                                                  
                                              
FILE HANDLE DATA / NAME="file-specification" LRECL=975.                              
DATA LIST FILE=DATA /
   SAFETY 1-3 (A)           ZONE 4-4 (A)             AMTFINEC 5-11          
   AMTREST 12-20            AMTTOTAL 21-29           COSTSUP 30-36          
   FINE 37-43               TOTREST 44-53            SENTTOT 54-57          
   SENTTOT0 58-61           SENSPLT 62-65            SENSPLT0 66-69         
   TIMESERV 70-73           USSCIDN 74-79            ACCAP 80-80            
   ACCCAT 81-81             ACCGDLN 82-82            ACCOFFLV 83-84         
   ACCTRESP 85-86           CAROFFAP 87-87           AGE 88-89              
   ALTDUM 90-90             ALTMO 91-92              AMENDYR 93-96          
   CAROFFLV 97-98           CHAP2 99-100             CIRCDIST 101-102       
   CITIZEN 103-103          CITWHERE 104-106         COADJLEV 107-108       
   COMBDRG2 109-110         COMDUM 111-111           COSTSDUM 112-112       
   CRIMHIST 113-113         CRIMLIV 114-115          CRIMPTS 116-118        
   DAYSDUM 119-119          DEFCONSL 120-121         DEFENNUM 122-124       
   DEPART 125-125           DISPOSIT 126-126         DISTRICT 127-128       
   DRUGTYP1 129-131         DRUGTYP2 132-134         DRUGTYP3 135-137       
   DRUGTYP4 138-140         DRUGTYP5 141-143         DSIND 144-144          
   DSJANDC 145-145          DSPLEA 146-146           DSPSR 147-147          
   DSSOR 148-148            DUFROM1 149-150          DUFROM2 151-151        
   DUFROM3 152-152          DUFROM4 153-153          DUFROM5 154-154        
   DUTO1 155-156            DUTO2 157-157            DUTO3 158-158          
   DUTO4 159-159            DUTO5 160-160            ECONDUM 161-161        
   EDUCATN 162-163          ENCRYPT1 164-164         ENCRYPT2 165-165       
   FINECDUM 166-166         FINEWAIV 167-167         HISPORIG 168-168       
   HOMDUM 169-169           HRCOMSRV 170-173         INOUT 174-174          
   INTDUM 175-175           IS924C 176-176           MARRIED 177-177        
   MOCOMCON 178-179         MOHOMDET 180-181         MOINTCON 182-183       
   MONCIRC 184-185          MONOFFTP 186-187         MONRACE 188-188        
   MONSEX 189-189           NEWCIT 190-190           NEWCNVTN 191-191       
   NEWEDUC 192-192          NEWRACE 193-193          NOCOMP 194-195         
   NOCOUNTS 196-198         NOUSTAT 199-200          NUMDEPEN 201-202       
   OFFTYPE2 203-204         POINT1 205-205           POINT2 206-207         
   POINT3 208-209           PRESENT 210-210          PRISDUM 211-211        
   PROBATN 212-214          PROBDUM 215-215          RANGEPT 216-216        
   REASON1 217-219          REASON2 220-222          REASON3 223-225        
   REL2PTS 226-226          RESNTDOC 227-228         RESTDUM 229-229        
   SAFE 230-230             SCRNOUT 231-231          SENTCODE 232-232       
   SENTIMP 233-233          SENTPTS 234-234          SEXOFFNA 235-236       
   SEXOFFNB 237-238         SOURCES 239-239          SUPRDUM 240-240        
   SUPREL 241-243           TOTCHPTS 244-245         TOTDAYS 246-247        
   TOTUNIT 248-251 (1)      TYPEMONY 252-252         TYPEOTHS 253-254       
   UNIT1 255-256            UNIT2 257-258            UNIT3 259-260          
   UNIT4 261-262            UNIT5 263-264            VIOL1PTS 265-265       
   WEAPON 266-266           WEAPSOC 267-267          XCRHISSR 268-268       
   XFOLSOR 269-270          YEARS 271-271            DRUGMIN 272-275        
   GLMIN 276-279            GLMAX 280-283            GUNMIN1 284-287        
   GUNMIN2 288-290          STATMAX 291-295          STATMIN 296-299        
   TOTPRISN 300-303         XMAXSOR 304-307          XMINSOR 308-311        
   DESCRIP1 312-312         DESCRIP2 313-326 (A)     DESCRIP3 327-327       
   DESCRIP4 328-328         DESCRIP5 329-329         CDESCRIP 330-330       
   CDESCR_A 331-331         CDESCR_B 332-332         CDESCR_C 333-333       
   CDESCR_D 334-334         ABERTXT 335-378 (A)      REASTXT1 379-395 (A)   
   REASTXT2 396-398 (A)     REASTXT3 399-401 (A)     POOFFICE 402-402 (A)   
   UPDDATE 403-410 (A)      TIMSERVD 411-413         TIMSERVM 414-416       
   SPECASSM 417-421         ABERCASE 422-422         CHMAM1 423-433 (2)     
   CHMAM2 434-438 (1)       CHMAM3 439-439           CHMAM4 440-440         
   CHMAM5 441-441           CUNIT1 442-442           CUNIT2 443-443         
   CUNIT3 444-444           CUNIT4 445-445           CUNIT5 446-446         
   CHEMTYP1 447-448         CHEMTYP2 449-450         CHEMTYP3 451-451       
   CHEMTYP4 452-452         CHEMTYP5 453-453         CAFROM1 454-459 (1)    
   CAFROM2 460-460          CAFROM3 461-461          CAFROM4 462-462        
   CAFROM5 463-463          CATO1 464-466            CATO2 467-467          
   CATO3 468-468            CATO4 469-469            CATO5 470-470          
   SENTDATE 471-480 (A)     DOB 481-490 (A)          RECDATE 491-500 (A)    
   CODEDATE 501-510 (A)     ORIGDATE 511-520 (A)     ABUSHI 521-522         
   ABUSRHI 523-524          ADJOFLHI 525-526         ADJOFRHI 527-528       
   ADJR_BHI 529-530         ADJR_CHI 531-533         ADJR_DHI 534-535       
   ADJR_EHI 536-537         ADJR_FHI 538-538         ADJR_GHI 539-540       
   ADJR_HHI 541-542         ADJR_IHI 543-543         ADJR_JHI 544-544       
   ADJR_KHI 545-545         ADJR_LHI 546-546         ADJR_MHI 547-547       
   ADJR_NHI 548-548         ADJR_OHI 549-549         ADJR_PHI 550-550       
   ADJ_BHI 551-552          ADJ_CHI 553-555          ADJ_DHI 556-557        
   ADJ_EHI 558-559          ADJ_FHI 560-561          ADJ_GHI 562-563        
   ADJ_HHI 564-565          ADJ_IHI 566-566          ADJ_JHI 567-567        
   ADJ_KHI 568-568          ADJ_LHI 569-569          ADJ_MHI 570-571        
   ADJ_NHI 572-572          ADJ_OHI 573-573          ADJ_PHI 574-574        
   AGGRLRHI 575-575         AGGROLHI 576-576         BASADJHI 577-579       
   BASADRHI 580-581         BASEHI 582-583           BASERHI 584-585        
   FLGHTRHI 586-586         FLIGHTHI 587-587         MITRLRHI 588-589       
   MITROLHI 590-591         OBSTRCHI 592-592         OBSTRRHI 593-593       
   OFFVCRHI 594-594         OFFVCTHI 595-595         RLADJRHI 596-596       
   ROLADJHI 597-597         RSTRVCHI 598-598         RSTRVRHI 599-599       
   TERORHI 600-601          TERORRHI 602-603         USKIDHI 604-604        
   USKIDRHI 605-605         VCADJRHI 606-606         VCTADJHI 607-607       
   VULVCRHI 608-608         VULVCTHI 609-609         GDLINEHI 610-614 (A)   
   GDSTATHI 615-619 (A)     LOSSHI 620-629           GDREFHI 630-634 (A)    
   LOSSRHI 635-644          NWSTAT1 645-654 (A)      NWSTAT2 655-665        
   NWSTAT3 666-674          NWSTAT4 675-682 (A)      NWSTAT5 683-690        
   NWSTAT6 691-699          NWSTAT7 700-707          NWSTAT8 708-715        
   NWSTAT9 716-722          NWSTAT10 723-728         NWSTAT11 729-734       
   NWSTAT12 735-740         NWSTAT13 741-746         NWSTAT14 747-752       
   NWSTAT15 753-753         NWSTAT16 754-754         NWSTAT17 755-755       
   CRPTS 756-756            MWGT1 757-766            MWGT2 767-776          
   MWGT3 777-786            MWGT4 787-796            MWGT5 797-806          
   WGT1 807-816             WGT2 817-826             WGT3 827-836           
   WGT4 837-846             WGT5 847-856             DRGAM1 857-869 (2)     
   DRGAM2 870-879 (2)       DRGAM3 880-889 (2)       DRGAM4 890-900 (2)     
   DRGAM5 901-909 (2)       DATO1 910-919 (2)        DATO2 920-927 (1)      
   DATO3 928-934 (1)        DATO4 935-935            DATO5 936-936          
   DAFROM1 937-946 (2)      DAFROM2 947-954 (1)      DAFROM3 955-961 (1)    
   DAFROM4 962-962          DAFROM5 963-963          MWEIGHT 964-973        
   DRUGPROB 974-974         DSAPPEAL 975-975.                               
                                                                            
* SPSS VARIABLE LABELS COMMAND.                                             
                                                                            
VARIABLE LABELS                                                             
   SAFETY "SAFETY VALVE DUMMY INDICATOR"                                    
   ZONE "SENTENCE TABLE GROUP"                                              
   AMTFINEC "$ AMT OF FINE/COST OF SUPERVISION"                             
   AMTREST "$ AMT OF RESTITUTION"                                           
   AMTTOTAL "SUM OF FINE/COST OF SUPERVISION OR RESTI"                      
   COSTSUP "DOLLAR AMOUNT OF COST OF SUPERVISION"                           
   FINE "DOLLAR AMOUNT OF FINE ORDERED"                                     
   TOTREST "DOLLAR AMOUNT OF RESTITUTION ORDERED"                           
   SENTTOT "TOTAL PRISON SENTENCE IN MOS W/O ZEROS"                         
   SENTTOT0 "TOTAL PRISON SENTENCE IN MOS WITH ZEROS"                       
   SENSPLT "TOTAL PRISON SENTENCE IN MOS W/O ZEROS"                         
   SENSPLT0 "TOTAL PRISON SENTENCE IN MOS WITH ZEROS"                       
   TIMESERV "MIN PRISION TIME THE DEFENDANT WILL SERV"                      
   USSCIDN "UNIQUE CASE NUMBER"                                             
   ACCAP "ARMED CAREER CRIMINAL STATUS APPLIED"                             
   ACCCAT "ADJUST IN CASE ACC STATUS AFFECTED PREVI"                        
   ACCGDLN "ACCEPTANCE, FINDINGS & GUIDELNE FACTORS"                        
   ACCOFFLV "LEVEL IF AFFECTED BY ARMED CAREER CRIMIN"                      
   ACCTRESP "NUM LEVELS SUBTR DUE TO ACCEPTANCE OF RE"                      
   CAROFFAP "CAREER OFFENDER STATUS APPLIED"                                
   AGE "DEFENDANT'S AGE AT TIME OF OFFENSE"                                 
   ALTDUM "ALTERNATIVE SENTENCE"                                            
   ALTMO "CUMULATIVE MONTHS OF ALTERNATIVE INCARCE"                         
   AMENDYR "GUIDELINE AMENDMENT YR USED IN CALCULATN"                       
   CAROFFLV "LVL IF CHANGE DUE TO CAREER OFFNDER STAT"                      
   CHAP2 "BASE OFFENSE LEVEL PLUS CHAPTER TWO SOCS"                         
   CIRCDIST "DISTRICTS(ORDER OF APPEARANCE IN ANNUAL)"                      
   CITIZEN "NATURE OF DEFENDANT'S CITIZENSHIP"                              
   CITWHERE "DEF'S COUNTRY OF CITIZENSHIP IF NOT U.S."                      
   COADJLEV "COMBINED ADJUSTED OFFENSE LEVEL SUBTOTAL"                      
   COMBDRG2 "AGGREGATION OF COMBDRG1"                                       
   COMDUM "RECEIPT OF COMMUNITY CONFINEMENT"                                
   COSTSDUM "COST OF SUPERVISION GIVEN"                                     
   CRIMHIST "DOES DEFENDANT HAVE ANY CRIMINAL HISTORY"                      
   CRIMLIV "OFFENSE LVL BASED ON CRIMINAL LIVELIHOOD"                       
   CRIMPTS "SUBTOTAL OF CRIM HIST POINTS APPLIED"                           
   DAYSDUM "RECEIPT OF ANY DAYS IN PRISON"                                  
   DEFCONSL "TYPE OF DEFENSE COUNSEL USED IN INSTANT"                       
   DEFENNUM "DEFENDANT'S NUMBER"                                            
   DEPART "DEFENDANT'S DEPARTURE STATUS"                                    
   DISPOSIT "DISPOSITION OF DEFENDANT'S CASE"                               
   DISTRICT "DISTRICT WHERE DEFENDANT WAS SENTENCED"                        
   DRUGTYP1 "INDICATOR OF 1ST TYPE OF DRUG"                                 
   DRUGTYP2 "INDICATOR OF 2ND TYPE OF DRUG"                                 
   DRUGTYP3 "INDICATOR OF 3RD TYPE OF DRUG"                                 
   DRUGTYP4 "INDICATOR OF 4TH TYPE OF DRUG"                                 
   DRUGTYP5 "INDICATOR OF 5TH TYPE OF DRUG"                                 
   DSIND "DOCUMENT STATUS FOR INDICTMENT OR INFORM"                         
   DSJANDC "DOCUMENT STATUS FOR JUDGMENT AND CONVICT"                       
   DSPLEA "DOCUMENT STATUS FOR PLEA"                                        
   DSPSR "DOCUMENT STATUS FOR PRESENTENCE REPORT"                           
   DSSOR "DOCUMENT STATUS FOR STATEMENT OF REASONS"                         
   DUFROM1 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP1"                          
   DUFROM2 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP2"                          
   DUFROM3 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP3"                          
   DUFROM4 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP4"                          
   DUFROM5 "LOW END UNIT DRUG WEIGHT FOR DRUGTYP5"                          
   DUTO1 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP1"                           
   DUTO2 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP2"                           
   DUTO3 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP3"                           
   DUTO4 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP4"                           
   DUTO5 "HIGH END UNIT DRUG WEIGHT FOR DRUGTYP5"                           
   ECONDUM "FINE/COST OF SUPERVISION OR RESTITUTION"                        
   EDUCATN "DEFENDANT'S HIGHEST LEVEL OF EDUCATION"                         
   ENCRYPT1 "USE OF ENCRYPTION OR SCRAMBLING TECHNOLO"                      
   ENCRYPT2 "POINTS ASSESSED UNDER OBSTRUCTION OF JUS"                      
   FINECDUM "FINE/COST OF SUPERVISION AMOUNT GIVEN"                         
   FINEWAIV "WHETHER FINE (OR PORTION) WAS WAVED"                           
   HISPORIG "DEFENDANT'S ETHNIC ORIGIN"                                     
   HOMDUM "RECEPIT OF HOME DETENTION"                                       
   HRCOMSRV "NUMBER OF COMMUNITY SERVICE HRS ORDERED"                       
   INOUT "WHETHER DEFENDANT RECEIVED PRISON SENTEN"                         
   INTDUM "RECEIPT OF INTERMITTENT CONFINEMENT"                             
   IS924C "SUBSECTION FLAG"                                                 
   MARRIED "MARITAL STATUS OF OFFENDER"                                     
   MOCOMCON "TERM OF COMMUNITY CONFINMNT ORDRD (MONTH"                      
   MOHOMDET "TERM OF HOME DETENTION ORDERED IN MOS."                        
   MOINTCON "TERM OF INTERMITTENT CONFINEMENT ORDERED"                      
   MONCIRC "CIRCUIT IN WHICH DEFENDANT WAS SENTENCED"                       
   MONOFFTP "OFFENS TYPE DETERMND BY MONITORING CODER"                      
   MONRACE "DEFENDANT'S RACE"                                               
   MONSEX "DEFENDANT'S GENDER"                                              
   NEWCIT "CITIZENSHIP OF DEFENDANT"                                        
   NEWCNVTN "SETTLED BY PLEA AGREEMENT OR TRIAL"                            
   NEWEDUC "EDUCATION OF DEFENDANT"                                         
   NEWRACE "RACE OF DEFENDANT"                                              
   NOCOMP "NUMBER OF GUIDELINE COMPUTATIONS"                                
   NOCOUNTS "NUMBER OF COUNTS OF CONVICTION"                                
   NOUSTAT "NUMBER OF UNIQUE STATUTES IN CASE"                              
   NUMDEPEN "NUM DEPENDENTS WHOM DFNDT SUPPORTS"                            
   OFFTYPE2 "PRIM OFF TYP-CASE GENERATED FROM STAT MA"                      
   POINT1 "NUM ONE-POINT INCIDENTS"                                         
   POINT2 "NUM TWO-POINT INCIDENTS"                                         
   POINT3 "NUM THREE-POINT INCIDENTS"                                       
   PRESENT "OFFENDER'S PRE-SENTENCE DETENTION STATUS"                       
   PRISDUM "RECEIPT OF PRISON SENTENCE"                                     
   PROBATN "TOTAL PROBATION ORDERED IN MONTHS"                              
   PROBDUM "RECEIPT OF PROBATION"                                           
   RANGEPT "RANGE POINT ON SENTENCING"                                      
   REASON1 "1ST REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   REASON2 "2ND REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   REASON3 "3RD REASON FOR DEPARTURE SENTENCE IMPOSE"                       
   REL2PTS "NUM PTS FROM INSTANT OFFENSE < 2 YRS AFT"                       
   RESNTDOC "IF AND WHY A RESENTENCING OCCURRED"                            
   RESTDUM "RESTITUTION AMOUNT GIVEN"                                       
   SAFE "SAFETY VALVE PROVISION APPLIED"                                    
   SCRNOUT "SCREEN OUT STATUS OF CASE"                                      
   SENTCODE "DATAFILE THAT CASE WAS SEPARATED INTO"                         
   SENTIMP "TYPE OF SENTENCE"                                               
   SENTPTS "NUM PTS FROM INSTANT OFFENSE"                                   
   SEXOFFNA "OFFENSE LEVEL UNDER 4B1.5 PRONG A"                             
   SEXOFFNB "OFFENSE LEVEL UNDER 4B1.5 PRONG B"                             
   SOURCES "CODED INFO BASED ON KNOWN COURT FINDINGS"                       
   SUPRDUM "RECEIPT OF SUPERVISED RELEASE"                                  
   SUPREL "MONTHS OF SUPERVISED RELEASE ORDERED"                            
   TOTCHPTS "TOTAL NUM OF CRIM HIST POINTS APPLIED"                         
   TOTDAYS "TOTAL DAYS OF IMPRISONMENT ORDERED"                             
   TOTUNIT "NO. UNITS USED TO CALCULAT OFFENS LVL AD"                       
   TYPEMONY "FINE/COST OF SUPERVISION OR RESTITUTION"                       
   TYPEOTHS "OTHER TYPES OF SENTENCES ORDERED"                              
   UNIT1 "UNIT OF MEASURE FOR 1ST TYPE OF DRUGS"                            
   UNIT2 "UNIT OF MEASURE FOR 2ND TYPE OF DRUGS"                            
   UNIT3 "UNIT OF MEASURE FOR 3RD TYPE OF DRUGS"                            
   UNIT4 "UNIT OF MEASURE FOR 4TH TYPE OF DRUGS"                            
   UNIT5 "UNIT OF MEASURE FOR 5TH TYPE OF DRUGS"                            
   VIOL1PTS "NUM PTS FOR EACH PRIOR SENTENCE"                               
   WEAPON "SOC WEAPON ENHANCEMENT OR CONVICTION"                            
   WEAPSOC "SOC ENHANCEMENT FOR A WEAPON PRESENT"                           
   XCRHISSR "DEFENDANTS FINAL CRIMINAL HSTRY CATEGORY"                      
   XFOLSOR "FINAL OFFENSE LEVEL"                                            
   YEARS "CATEGORIES OF AGE RANGES"                                         
   DRUGMIN "MANDATRY MIN SENTNCE (MONTHS) FOR DRUG"                         
   GLMIN "ADJUSTED GUIDELINE RANGE MINIMUM"                                 
   GLMAX "ADJUSTED GUIDELINE RANGE MAXIMUM"                                 
   GUNMIN1 "MANDATRY MIN SENTNCE UNDR 18.924C (MONTH"                       
   GUNMIN2 "MANDATRY MIN SENTNCE UNDR 18.924E (MONTH"                       
   STATMAX "TOTAL STATUTORY MAX PRISON TERM IN MOS."                        
   STATMIN "TOTAL STATUTORY MIN PRISON TERM IN MOS."                        
   TOTPRISN "TOTAL MONTHS OF IMPRISONMENT ORDERED"                          
   XMAXSOR "MAX GUIDELINE RANGE FOR IMPRISONMENT"                           
   XMINSOR "MIN GUIDELINE RANGE FOR IMPRISONMENT"                           
   DESCRIP1 "DRUGTYP1-OTHER"                                                
   DESCRIP2 "DRUGTYP2-OTHER"                                                
   DESCRIP3 "DRUGTYP3-OTHER"                                                
   DESCRIP4 "DRUGTYP4-OTHER"                                                
   DESCRIP5 "DRUGTYP5-OTHER"                                                
   CDESCRIP "CHEMTYP-OTHER"                                                 
   CDESCR_A "CHEMTYP-OTHER"                                                 
   CDESCR_B "CHEMTYP-OTHER"                                                 
   CDESCR_C "CHEMTYP-OTHER"                                                 
   CDESCR_D "CHEMTYP-OTHER"                                                 
   ABERTXT "TEXT DESCRIPTION OF ABBERRATIONS"                               
   REASTXT1 "REASONS FOR DEPARTURE NOT IN REASON1"                          
   REASTXT2 "REASONS FOR DEPARTURE NOT IN REASON2"                          
   REASTXT3 "REASONS FOR DEPARTURE NOT IN REASON3"                          
   POOFFICE "CODE FOR PSR PREPARATN PROBATION OFFIC3"                       
   UPDDATE "DATE CASE WAS LAST UPDATED"                                     
   TIMSERVD "NUM DAYS CREDITD TO OFFNDER AT SENTNCING"                      
   TIMSERVM "NUM MONTHS CREDITD OFFNDER AT SENTENCING"                      
   SPECASSM "$ VALUE OF SPECIAL ASSESSMENT FEE"                             
   ABERCASE "ABERCASE"                                                      
   CHMAM1 "AMOUNT OF 1ST CHEMICAL TYPE"                                     
   CHMAM2 "AMOUNT OF 2ND CHEMICAL TYPE"                                     
   CHMAM3 "AMOUNT OF 3RD CHEMICAL TYPE"                                     
   CHMAM4 "AMOUNT OF 4TH CHEMICAL TYPE"                                     
   CHMAM5 "AMOUNT OF 5TH CHEMICAL TYPE"                                     
   CUNIT1 "UNIT OF MEASURE FOR 1ST TYPE OF CHEMICAL"                        
   CUNIT2 "UNIT OF MEASURE FOR 2ND TYPE OF CHEMICAL"                        
   CUNIT3 "UNIT OF MEASURE FOR 3RD TYPE OF CHEMICAL"                        
   CUNIT4 "UNIT OF MEASURE FOR 4TH TYPE OF CHEMICAL"                        
   CUNIT5 "UNIT OF MEASURE FOR 5TH TYPE OF CHEMICAL"                        
   CHEMTYP1 "INDICATOR OF 1ST TYPE OF CHEMICAL"                             
   CHEMTYP2 "INDICATOR OF 2ND TYPE OF CHEMICAL"                             
   CHEMTYP3 "INDICATOR OF 3RD TYPE OF CHEMICAL"                             
   CHEMTYP4 "INDICATOR OF 4TH TYPE OF CHEMICAL"                             
   CHEMTYP5 "INDICATOR OF 5TH TYPE OF CHEMICAL"                             
   CAFROM1 "CHEMICAL WEIGHT RANGE LOW CHEMTYP1"                             
   CAFROM2 "CHEMICAL WEIGHT RANGE LOW CHEMTYP2"                             
   CAFROM3 "CHEMICAL WEIGHT RANGE LOW CHEMTYP3"                             
   CAFROM4 "CHEMICAL WEIGHT RANGE LOW CHEMTYP4"                             
   CAFROM5 "CHEMICAL WEIGHT RANGE LOW CHEMTYP5"                             
   CATO1 "CHEMICAL WEIGHT RANGE HIGH CHEMTYP1"                              
   CATO2 "CHEMICAL WEIGHT RANGE HIGH CHEMTYP2"                              
   CATO3 "CHEMICAL WEIGHT RANGE HIGH CHEMTYP3"                              
   CATO4 "CHEMICAL WEIGHT RANGE HIGH CHEMTYP4"                              
   CATO5 "CHEMICAL WEIGHT RANGE HIGH CHEMTYP5"                              
   SENTDATE "DATE ON WHICH DEFENDANT WAS SENTENCED"                         
   DOB "DEFENDANT'S DATE OF BIRTH"                                          
   RECDATE "DATE CASE WAS PROCESSED IN FILEROOM"                            
   CODEDATE "DATE CASE WAS ANALYTICALLY PROCESSED"                          
   ORIGDATE "DATE CASE WAS RECEIVED IN FILEROOM"                            
   ABUSHI "HIGHEST COMPUTATION OF ABUS"                                     
   ABUSRHI "HIGHEST COMPUTATION OF ABUSR"                                   
   ADJOFLHI "HIGHEST COMPUTATION OF ADJOFLV"                                
   ADJOFRHI "HIGHEST OF ADJOFLR"                                            
   ADJR_BHI "HIGHEST OF ADJR_B"                                             
   ADJR_CHI "HIGHEST OF ADJR_C"                                             
   ADJR_DHI "HIGHEST OF ADJR_D"                                             
   ADJR_EHI "HIGHEST OF ADJR_E"                                             
   ADJR_FHI "HIGHEST OF ADJR_F"                                             
   ADJR_GHI "HIGHEST OF ADJR_G"                                             
   ADJR_HHI "HIGHEST OF ADJR_H"                                             
   ADJR_IHI "HIGHEST OF ADJR_I"                                             
   ADJR_JHI "HIGHEST OF ADJR_J"                                             
   ADJR_KHI "HIGHEST OF ADJR_K"                                             
   ADJR_LHI "HIGHEST OF ADJR_L"                                             
   ADJR_MHI "HIGHEST OF ADJR_M"                                             
   ADJR_NHI "HIGHEST OF ADJR_N"                                             
   ADJR_OHI "HIGHEST OF ADJR_O"                                             
   ADJR_PHI "HIGHEST OF ADJR_P"                                             
   ADJ_BHI "HIGHEST COMPUTATION OF ADJ_B"                                   
   ADJ_CHI "HIGHEST COMPUTATION OF ADJ_C"                                   
   ADJ_DHI "HIGHEST COMPUTATION OF ADJ_D"                                   
   ADJ_EHI "HIGHEST COMPUTATION OF ADJ_E"                                   
   ADJ_FHI "HIGHEST COMPUTATION OF ADJ_F"                                   
   ADJ_GHI "HIGHEST COMPUTATION OF ADJ_G"                                   
   ADJ_HHI "HIGHEST COMPUTATION OF ADJ_H"                                   
   ADJ_IHI "HIGHEST COMPUTATION OF ADJ_I"                                   
   ADJ_JHI "HIGHEST COMPUTATION OF ADJ_J"                                   
   ADJ_KHI "HIGHEST COMPUTATION OF ADJ_K"                                   
   ADJ_LHI "HIGHEST COMPUTATION OF ADJ_L"                                   
   ADJ_MHI "HIGHEST COMPUTATION OF ADJ_M"                                   
   ADJ_NHI "HIGHEST COMPUTATION OF ADJ_N"                                   
   ADJ_OHI "HIGHEST COMPUTATION OF ADJ_O"                                   
   ADJ_PHI "HIGHEST COMPUTATION OF ADJ_P"                                   
   AGGRLRHI "HIGHEST OF AGGROLR"                                            
   AGGROLHI "HIGHEST COMPUTATION OF AGGROL"                                 
   BASADJHI "HIGHEST OF BASADJ"                                             
   BASADRHI "HIGHEST OF BASADR"                                             
   BASEHI "HIGHEST COMPUTATION OF BASE"                                     
   BASERHI "HIGHEST OF BASER"                                               
   FLGHTRHI "HIGHEST OF FLIGHT"                                             
   FLIGHTHI "HIGHEST COMPUTATION OF FLIGHT"                                 
   MITRLRHI "HIGHEST OF MITROLR"                                            
   MITROLHI "HIGHEST COMPUTATION OF MITROL"                                 
   OBSTRCHI "HIGHEST COMPUTATION OF OBSTRCT"                                
   OBSTRRHI "HIGHEST OF OBSTRCR"                                            
   OFFVCRHI "HIGHEST OF OFFCVTR"                                            
   OFFVCTHI "HIGHEST COMPUTATION OF OFFVICT"                                
   RLADJRHI "HIGHEST OF ROLADJR"                                            
   ROLADJHI "HIGHEST COMPUTATION OF ROLEADJ"                                
   RSTRVCHI "HIGHEST COMPUTATION OF RSTRVCT"                                
   RSTRVRHI "HIGHEST COMPUTATION OF RSTRVR"                                 
   TERORHI "HIGHEST COMPUTATION OF TEROR"                                   
   TERORRHI "HIGHEST OF TERORR"                                             
   USKIDHI "HIGHEST COMPUTATION OF USKID"                                   
   USKIDRHI "HIGHEST OF USKIDR"                                             
   VCADJRHI "HIGHEST COMPUTATION OF VCADJR"                                 
   VCTADJHI "HIGHEST COMPUTATION OF VCTADJ"                                 
   VULVCRHI "HIGHEST OF VULVCTR"                                            
   VULVCTHI "HIGHEST COMPUTATION OF VULVICT"                                
   GDLINEHI "HIGHEST COMPUTATION OF GDLINE"                                 
   GDSTATHI "STATUTORY GUIDELINE APPLIED"                                   
   LOSSHI "HIGHEST COMPUTATION OF LOSS"                                     
   GDREFHI "REFERENCE GUIDELINE APPLIED"                                    
   LOSSRHI "HIGHEST COMPUTATION OF LOSSGNR"                                 
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
   CRPTS "CRIMINAL HISTORY POINTS AWARDED"                                  
   MWGT1 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                         
   MWGT2 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                         
   MWGT3 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                         
   MWGT4 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                         
   MWGT5 "MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG"                         
   WGT1 "GRAM AMT OF 1ST DRUG TYPE"                                         
   WGT2 "GRAM AMT OF 2ND DRUG TYPE"                                         
   WGT3 "GRAM AMT OF 3RD DRUG TYPE"                                         
   WGT4 "GRAM AMT OF 4TH DRUG TYPE"                                         
   WGT5 "GRAM AMT OF 5TH DRUG TYPE"                                         
   DRGAM1 "AMOUNT OF 1ST DRUG TYPE"                                         
   DRGAM2 "AMOUNT OF 2ND DRUG TYPE"                                         
   DRGAM3 "AMOUNT OF 3RD DRUG TYPE"                                         
   DRGAM4 "AMOUNT OF 4TH DRUG TYPE"                                         
   DRGAM5 "AMOUNT OF 5TH DRUG TYPE"                                         
   DATO1 "DRUG WEIGHT RANGE HIGH DRUGTYP1"                                  
   DATO2 "DRUG WEIGHT RANGE HIGH DRUGTYP2"                                  
   DATO3 "DRUG WEIGHT RANGE HIGH DRUGTYP3"                                  
   DATO4 "DRUG WEIGHT RANGE HIGH DRUGTYP4"                                  
   DATO5 "DRUG WEIGHT RANGE HIGH DRUGTYP5"                                  
   DAFROM1 "DRUG WEIGHT RANGE LOW DRUGTYP1"                                 
   DAFROM2 "DRUG WEIGHT RANGE LOW DRUGTYP2"                                 
   DAFROM3 "DRUG WEIGHT RANGE LOW DRUGTYP3"                                 
   DAFROM4 "DRUG WEIGHT RANGE LOW DRUGTYP4"                                 
   DAFROM5 "DRUG WEIGHT RANGE LOW DRUGTYP5"                                 
   MWEIGHT "MARIJUANA WGT EQUIVAL (IN GRAMS) OF OTHE"                       
   DRUGPROB "UNRESOLVED PROB BETWN DRUG TYP, AMT, OFF"                      
   DSAPPEAL "DOCUMENT STATUS FOR APPEAL".                                   
                                                                            
* SPSS VALUE LABELS COMMAND.                                                
                                                                            
VALUE LABELS                                                                
   SAFETY                                                                   
   "0"  "Safety Valve Not Applied"                                          
   "1"  "Safety Valve Applied" /                                            
   ZONE                                                                     
   "A"  "Zone A"                                                            
   "B"  "Zone B"                                                            
   "C"  "Zone C"                                                            
   "D"  "Zone D" /                                                          
   AMTFINEC                                                                 
   0 "No Fine/Cost of Supervision Ordered" /                                
   AMTREST                                                                  
   0 "No Restitution Ordered" /                                             
   AMTTOTAL                                                                 
   0 "No Fine/Cost of Supervision or Restituti" /                           
   COSTSUP                                                                  
   0 "No Cost Specified"                                                    
   999997 "Total Cost Ord, No Amt Specified" /                              
   FINE                                                                     
   0 "No fine"                                                              
   999999997 "Fine Ordered, Amt Not Specified" /                            
   TOTREST                                                                  
   0 "None"                                                                 
   999999997 "Restitution Ordered, Amt Not Specified" /                     
   SENTTOT                                                                  
   470 "Life"                                                               
   990 "990 Months or More" /                                               
   SENTTOT0                                                                 
   0 "Probation"                                                            
   470 "Life"                                                               
   990 "990 Months or More" /                                               
   SENSPLT                                                                  
   470 "Life"                                                               
   990 "990 Months or More" /                                               
   SENSPLT0                                                                 
   0 "Probation"                                                            
   470 "Life"                                                               
   990 "990 Months or More" /                                               
   TIMESERV                                                                 
   0 "No Months/Less than 1 month"                                          
   996 "Life Sentence"                                                      
   997 "Prison Ordered, but no term specified" /                            
   ACCAP                                                                    
   0 "Not Applied"                                                          
   1 "Applied" /                                                            
   ACCCAT                                                                   
   4 "Category IV"                                                          
   5 "Category V"                                                           
   6 "Category VI" /                                                        
   ACCGDLN                                                                  
   0 "Court DOES NOT Accept"                                                
   1 "Court DOES Accept"                                                    
   8 "Inapplicable" /                                                       
   ACCTRESP                                                                 
   -4 "Applied (Not In USSG Manual)"                                        
   -3 "Adjustment Applied"                                                  
   -2 "Adjustment Applied"                                                  
   -1 "Applied (Not In USSG Manual)"                                        
   0 "Adjustment Not Applied" /                                             
   CAROFFAP                                                                 
   0 "No, Career Offender Status Not Applied"                               
   1 "Yes, Career Offender Applied" /                                       
   ALTDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   ALTMO                                                                    
   97 "Alternatives, Not Specified" /                                       
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
   CITIZEN                                                                  
   1 "United States Citizen"                                                
   2 "Resident/Legal Alien"                                                 
   3 "Illegal Alien"                                                        
   4 "Not a US Citizen/Alien Status Unknown" /                              
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
   COMBDRG2                                                                 
   1 "Cocaine"                                                              
   2 "Crack"                                                                
   3 "Heroin"                                                               
   4 "Marijuana"                                                            
   6 "Methamphetamine"                                                      
   8 "LSD"                                                                  
   77 "Other" /                                                             
   COMDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   COSTSDUM                                                                 
   0 "No Amount Given for Cost of Supervision"                              
   1 "Amount Given for Cost of Supervision" /                               
   CRIMHIST                                                                 
   0 "No Criminal History"                                                  
   1 "Yes, There Is Criminal History" /                                     
   CRIMLIV                                                                  
   0 "Defendant Does Not Earn A Living From th" /                           
   CRIMPTS                                                                  
   0 "No History Points Applied" /                                          
   DAYSDUM                                                                  
   0 "No Prison Beyond That Specified in TOTPR"                             
   1 "One Month Added to TOTPRISN" /                                        
   DEFCONSL                                                                 
   1 "Privately Retained Counsel"                                           
   2 "Court Appointed Counsel"                                              
   3 "Federal Public Defender"                                              
   4 "Defendant Represented Self"                                           
   5 "Waived Rights to Counsel"                                             
   77 "Other Arrangements for Counsel" /                                    
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
   DSIND                                                                    
   0 "Not Received"                                                         
   1 "Received Indictment"                                                  
   2 "Received Information"                                                 
   3 "Other Charging Document Received"                                     
   6 "Not Received, Under Court Seal"                                       
   7 "Received, Under Court Seal"                                           
   8 "Indictment Will Never Be Available" /                                 
   DSJANDC                                                                  
   0 "Not Received"                                                         
   1 "Received J &  C"                                                      
   2 "Received Alternate Sentencing Document"                               
   6 "Did Not Receive, Under Court Seal"                                    
   7 "Received, Under Court Seal"                                           
   8 "Order Will Never Be Available" /                                      
   DSPLEA                                                                   
   0 "Not Received"                                                         
   1 "Received Written Agreement"                                           
   2 "Received Alternate Document"                                          
   3 "Oral Plea"                                                            
   4 "Received w/Court Order Seal"                                          
   5 "Written, Will never be Received"                                      
   6 "Did Not Receive, Sealed"                                              
   7 "Received, Sealed"                                                     
   8 "N/A (e.g. Trial)" /                                                   
   DSPSR                                                                    
   0 "Not Received"                                                         
   1 "Received PSR"                                                         
   2 "Received Alternate Document"                                          
   6 "Did Not Receive, Under Court Seal"                                    
   7 "Received, Under Court Seal"                                           
   8 "Waived/Will Never Receive" /                                          
   DSSOR                                                                    
   0 "Not Received"                                                         
   1 "Received SOR Form"                                                    
   2 "Received Transcript or Partial SOR"                                   
   6 "Did Not Receive, Under Court Seal"                                    
   7 "Received, Under Court Seal"                                           
   8 "N/A (e.g. Not Ordered)" /                                             
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
   ECONDUM                                                                  
   0 "Neither Fine/Cost of Supervision or Rest"                             
   1 "Fine/Cost of Supervision, Restitution, o" /                           
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
   FINECDUM                                                                 
   0 "No Fine or Cost of Supervision Amt Speci"                             
   1 "Fine/Cost of Supervision Amount Specifie" /                           
   FINEWAIV                                                                 
   0 "No Waiver Stated"                                                     
   1 "Waiver Specifically Stated"                                           
   9 "Relevant Documents Missing" /                                         
   HISPORIG                                                                 
   1 "Non-Hispanic"                                                         
   2 "Hispanic" /                                                           
   HOMDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   HRCOMSRV                                                                 
   9997 "Comm Service Ordered, Term Not Specified" /                        
   INOUT                                                                    
   0 "Received Prison Sentence"                                             
   1 "Received Non-Prison Sentence" /                                       
   INTDUM                                                                   
   0 "No"                                                                   
   1 "Yes" /                                                                
   IS924C                                                                   
   0 "No 18.924(c) Charges (Includes Missing)"                              
   1 "At Least One 18.924(c) Charge Present" /                              
   MARRIED                                                                  
   1 "Single"                                                               
   2 "Married"                                                              
   3 "Cohabitating (not legally married)"                                   
   4 "Divorced"                                                             
   5 "Widowed"                                                              
   6 "Separated" /                                                          
   MOCOMCON                                                                 
   0 "No Community Confinement Ordered"                                     
   97 "Comm Confinement Ordered But No Term Spe" /                          
   MOHOMDET                                                                 
   0 "No Home Detention ordered"                                            
   97 "Home Detentention Ord Term Not Specified" /                          
   MOINTCON                                                                 
   0 "No Intermittent Confinement Ordered"                                  
   97 "Intermittent Confinement Ord No Term Spe" /                          
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
   NEWCIT                                                                   
   0 "U.S."                                                                 
   1 "Non-U.S. (Legal and Illegal Aliens)" /                                
   NEWCNVTN                                                                 
   0 "Plea"                                                                 
   1 "Trial" /                                                              
   NEWEDUC                                                                  
   1 "Less Than H.S. Graduate"                                              
   3 "H.S. Graduate"                                                        
   5 "Some College"                                                         
   6 "College Graduate" /                                                   
   NEWRACE                                                                  
   1 "White"                                                                
   2 "Black"                                                                
   3 "Hispanic"                                                             
   6 "Other" /                                                              
   NUMDEPEN                                                                 
   0 "No Dependents"                                                        
   97 "Some Dependents, Exact Number Unknown" /                             
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
   POINT1                                                                   
   0 "None" /                                                               
   POINT2                                                                   
   0 "None" /                                                               
   POINT3                                                                   
   0 "None" /                                                               
   PRESENT                                                                  
   1 "In Custody"                                                           
   2 "Out on Bail/Bond"                                                     
   3 "Released on Own Recognizance"                                         
   4 "Other" /                                                              
   PRISDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   PROBATN                                                                  
   0 "No Probation Ordered"                                                 
   97 "Probation Ordered But No Term Specified" /                           
   PROBDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   RANGEPT                                                                  
   0 "Missing/Logic Problems"                                               
   1 "Guideline Minimum"                                                    
   2 "Lower Half of Range"                                                  
   3 "Midpoint of Range"                                                    
   4 "Upper Half of Range"                                                  
   5 "Guideline Maximum"                                                    
   6 "Guideline Min/Max are Equal" /                                        
   REASON1                                                                  
   0 "No Reason Given"                                                      
   998 "Inapplicable" /                                                     
   REASON2                                                                  
   0 "No Reason Given"                                                      
   998 "Inapplicable" /                                                     
   REASON3                                                                  
   0 "No Reason Given"                                                      
   998 "Inapplicable" /                                                     
   REL2PTS                                                                  
   0 "None"                                                                 
   1 "Adj For Offense < 2 Yr Aft Release"                                   
   2 "Adj For Comm Of Offense < 2 Yr Aft Rel" /                             
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
   RESTDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   SAFE                                                                     
   0 "Not Applied"                                                          
   1 "Applied"                                                              
   2 "Sentenced Below Mandatory" /                                          
   SCRNOUT                                                                  
   0 "Not Screened Out"                                                     
   1 "All Counts Involve Petty Offenses"                                    
   2 "All Counts Involve Offense Prior to 11/1"                             
   3 "Diversionary Sentence Ordered" /                                      
   SENTCODE                                                                 
   1 "Original Sentencing"                                                  
   2 "1st Re-Sentencing"                                                    
   3 "2nd Re-Sentencing"                                                    
   4 "3rd Re-Sentencing"                                                    
   5 "Probation Violation" /                                                
   SENTIMP                                                                  
   0 "No Prison/Probation (Fine Only)"                                      
   1 "Prison Only (No Alternatives)"                                        
   2 "Prison + Confinement Conditions"                                      
   3 "Probation + Confinement Conditions"                                   
   4 "Probation Only" /                                                     
   SENTPTS                                                                  
   0 "None"                                                                 
   1 "Adjust Applied (Not in Gdlines)"                                      
   2 "Adjustment Applied" /                                                 
   SOURCES                                                                  
   1 "Info Repr KNOWN COURT"                                                
   2 "Post-Sentence Report Received"                                        
   3 "PSR Is Coded (Insuff SOR)"                                            
   5 "PSR Is Coded (No SOR)"                                                
   6 "Sec 18 Par924(c) Only"                                                
   8 "No Analogous Guideline"                                               
   9 "PSR Waived, Missing, or Multiple OFfense" /                           
   SUPRDUM                                                                  
   0 "No"                                                                   
   1 "Yes" /                                                                
   SUPREL                                                                   
   0 "No Supervised Release Ordered"                                        
   996 "Life Term Ordered"                                                  
   997 "Supv Rel Ordered, No Term Specified" /                              
   TOTCHPTS                                                                 
   0 "None" /                                                               
   TOTDAYS                                                                  
   0 "None"                                                                 
   90 "990 mo or More"                                                      
   91 "Time Served"                                                         
   92 "Less Than 1 Day Imprisonment"                                        
   96 "Life Imprisonment Ordered"                                           
   97 "Prison Ordered But Term Not Specified"                               
   98 "Death Sentence" /                                                    
   TYPEMONY                                                                 
   1 "No Fine/Cost of Supervision, Nor Restitu"                             
   2 "Restitution Ordered, No Fine/Cost of Sup"                             
   3 "Fine/Cost of Supervision, No Restitution"                             
   4 "Both Fine/Cost of Supervison and Restitu" /                           
   TYPEOTHS                                                                 
   0 "None"                                                                 
   1 "Suspended Prison Term"                                                
   2 "Pay Cost of Prosecution"                                              
   3 "Denial of Federal Benefits"                                           
   77 "Other" /                                                             
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
   VIOL1PTS                                                                 
   0 "No Points Applied"                                                    
   4 "4 Pts Added (Not In Manuals)"                                         
   5 "5 Pts Added (Not In Manuals)" /                                       
   WEAPON                                                                   
   0 "No SOC Weap Enhan Nor 18.924(c) Charge P"                             
   1 "SOC Weapon Enhancement or 18.924(c) Char" /                           
   WEAPSOC                                                                  
   0 "No SOC Weapon Enhancement"                                            
   1 "SOC Weapon Enhancement" /                                             
   YEARS                                                                    
   1 "<21"                                                                  
   2 "21 through 25"                                                        
   3 "26 through 30"                                                        
   4 "31 through 35"                                                        
   5 "36 through 40"                                                        
   6 "41 through 50"                                                        
   7 ">50" /                                                                
   DRUGMIN                                                                  
   996 "Life"                                                               
   997 "Problem Case" /                                                     
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
   GUNMIN1                                                                  
   996 "Life"                                                               
   997 "Further Review" /                                                   
   GUNMIN2                                                                  
   996 "Life"                                                               
   997 "Further Review" /                                                   
   STATMAX                                                                  
   9996 "Life"                                                              
   9997 "Death" /                                                           
   STATMIN                                                                  
   9996 "Life"                                                              
   9997 "Death" /                                                           
   TOTPRISN                                                                 
   0 "No Prison or < 1 Month Ordered"                                       
   990 "990 mo or More"                                                     
   991 "Time Served"                                                        
   992 "Less Than 1 Day Imprisonment"                                       
   996 "Life Imprisonment Ordered"                                          
   997 "Prison Ordered But No Term Specified"                               
   998 "Death Sentence" /                                                   
   XMAXSOR                                                                  
   996 "Life" /                                                             
   XMINSOR                                                                  
   996 "Life" /                                                             
   POOFFICE                                                                 
   "Z"  "Missing" /                                                         
   TIMSERVD                                                                 
   997 "Time Served, Amt Unknown" /                                         
   TIMSERVM                                                                 
   997 "Time Served, Amt Unknown" /                                         
   SPECASSM                                                                 
   0 "No Special Assessment Ordered" /                                      
   ABERCASE                                                                 
   0 "Not abberrant"                                                        
   1 "Has abberrations" /                                                   
   CHMAM1                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   CHMAM2                                                                   
   7777777.8 "Ambiguous Amount"                                             
   10000000.0 "Range" /                                                     
   CHMAM3                                                                   
   7777778 "Ambiguous Amount"                                               
   10000000 "Range" /                                                       
   CHMAM4                                                                   
   7777778 "Ambiguous Amount"                                               
   10000000 "Range" /                                                       
   CHMAM5                                                                   
   7777778 "Ambiguous Amount"                                               
   10000000 "Range" /                                                       
   CUNIT1                                                                   
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
   CUNIT2                                                                   
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
   CUNIT3                                                                   
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
   CUNIT4                                                                   
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
   CUNIT5                                                                   
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
   ABUSHI                                                                   
   0 "Adjustment Not Applied"                                               
   1 "Increase (Not in USSG Manual)"                                        
   2 "Abuse Applied"                                                        
   3 "Increase (Not in USSG Manual)" /                                      
   ABUSRHI                                                                  
   0 "Adjustment Not Applied"                                               
   1 "Increase (Not in USSG Manual)"                                        
   2 "Abuse Applied"                                                        
   3 "Increase (Not in USSG Manual)" /                                      
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
   ADJR_JHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_KHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_LHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_MHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_NHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_OHI                                                                 
   0 "No Adjustment Applied" /                                              
   ADJR_PHI                                                                 
   0 "No Adjustment Applied" /                                              
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
   ADJ_JHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_KHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_LHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_MHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_NHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_OHI                                                                  
   0 "No Adjustment Applied" /                                              
   ADJ_PHI                                                                  
   0 "No Adjustment Applied" /                                              
   AGGRLRHI                                                                 
   0 "No Adjustment Applied"                                                
   1 "Applied (Not In Guidelines)"                                          
   2 "Adj Applied (Mgr, Organizer, Super Of 5+"                             
   3 "Adj Applied (Mgr Or Supervisor Of 5+ Par"                             
   4 "Adj Appl (Leader Or Organizer Of 5+ Part" /                           
   AGGROLHI                                                                 
   0 "No Adjustment Applied"                                                
   1 "Applied-Not In Gdlins)"                                               
   2 "Applied-Mgr/Org/Sup/Ldr"                                              
   3 "Applied-Mgr/Sup of 5+"                                                
   4 "Applied-Ldr/Org of 5+" /                                              
   FLGHTRHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied" /                                                 
   FLIGHTHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied" /                                                 
   MITRLRHI                                                                 
   -6 "Adjustment (Not In USSG Manual)"                                     
   -4 "Minimal Participation"                                               
   -3 "Between Minor and Minimal Partic"                                    
   -2 "Minor Participation"                                                 
   -1 "Adjustment (Not In USSG Manual)"                                     
   0 "No Adjustment" /                                                      
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
   OBSTRRHI                                                                 
   0 "No Adjustment"                                                        
   1 "Adjustment -Not in Gdlns)"                                            
   2 "Adjustment Applied" /                                                 
   OFFVCRHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied (Not In Guidelines)"                               
   3 "Adjust Applied" /                                                     
   OFFVCTHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied"                                                   
   3 "Adjustment Applied" /                                                 
   RLADJRHI                                                                 
   0 "No Role Adjustment(s) Given"                                          
   1 "Yes Role Adjustment(s) Given" /                                       
   ROLADJHI                                                                 
   0 "No Role Adjustment(s) Given"                                          
   1 "Role Adjustment(s) Given" /                                           
   RSTRVCHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied" /                                                 
   RSTRVRHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment Applied" /                                                 
   TERORHI                                                                  
   0 "No Adjustment Applied" /                                              
   TERORRHI                                                                 
   0 "No Adjustment Applied" /                                              
   USKIDHI                                                                  
   0 "No Adjustment Applied"                                                
   2 "Adjustment Applied" /                                                 
   USKIDRHI                                                                 
   0 "No Adjustment Aplied"                                                 
   2 "Adjustment Applied" /                                                 
   VCADJRHI                                                                 
   0 "No Adjustment Applied"                                                
   1 "Adjustment applied" /                                                 
   VCTADJHI                                                                 
   0 "No Adjustment Applied"                                                
   1 "Adjustment applied" /                                                 
   VULVCRHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment For Vulnerable Victim"                                     
   3 "Adjust For Hate Crime"                                                
   4 "Adjust For Multiple Vulnerable Victims"                               
   5 "Adjust For Both Hate Crime And Vulnerabl" /                           
   VULVCTHI                                                                 
   0 "No Adjustment"                                                        
   2 "Adjustment For Vulnerable Victim"                                     
   3 "Adjustment For Hate Crime"                                            
   4 "Adjust For Multiple Vulnerable Victims"                               
   5 "Adjustment For Both Hate Crime and Vulne" /                           
   LOSSHI                                                                   
   999999997 "Range of Amounts" /                                           
   LOSSRHI                                                                  
   999999997 "Range of amounts" /                                           
   CRPTS                                                                    
   0 "No Criminal History Points Applied"                                   
   1 "Yes, Criminal History Points" /                                       
   MWGT1                                                                    
   0 "No drug weights coded/unit(s) were inapp" /                           
   MWGT2                                                                    
   0 "No drug weights coded/unit(s) were inapp" /                           
   MWGT3                                                                    
   0 "No drug weights coded/unit(s) were inapp" /                           
   MWGT4                                                                    
   0 "No drug weights coded/unit(s) were inapp" /                           
   MWGT5                                                                    
   0 "No drug weights coded/unit(s) were inapp" /                           
   DRGAM1                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   DRGAM2                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   DRGAM3                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   DRGAM4                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   DRGAM5                                                                   
   7777777.78 "Ambiguous Amount"                                            
   10000000.00 "Range" /                                                    
   MWEIGHT                                                                  
   0 "No drug weights coded/unit(s) were inapp" /                           
   DRUGPROB                                                                 
   0 "No Problem/NA"                                                        
   1 "Problem Exists" /                                                     
   DSAPPEAL                                                                 
   0 "Not Received"                                                         
   1 "Received Appeal"                                                      
   6 "Not Received, Under Court Seal"                                       
   7 "Received, Under Court Seal" /.                                        
