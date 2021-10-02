*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 04290
*              MONITORING OF FEDERAL CRIMINAL SENTENCES, 2003
*
*                           (PART 1: Main Data)
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\04290-0001-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  NOTE:  Users should modify this setup file to suit their specific 
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove 
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da04290-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=2807.
DATA LIST FILE=DATA /
          SAFETY 1-3 (A)              ZONE 4 (A)
           AMTFINEC 5-12           AMTREST 13-22          AMTTOTAL 23-32
           COSTSUP 33-38              FINE 39-46           TOTREST 47-56
       SENTTOT 57-63 (2)      SENTTOT0 64-70 (2)       SENSPLT 71-77 (2)
      SENSPLT0 78-84 (2)      TIMESERV 85-91 (2)           USSCIDN 92-97
                ACCAP 98               ACCCAT 99             ACCGDLN 100
        ACCOFFLV 101-102        ACCTRESP 103-104            CAROFFAP 105
             AGE 106-108              ALTDUM 109           ALTMO 110-111
         AMENDYR 112-115         ARMCRIM 116-117        CAROFFEN 118-119
        CAROFFLV 120-121           CHAP2 122-124        CIRCDIST 125-126
             CITIZEN 127        CITWHERE 128-130        COADJLEV 131-132
        COMBDRG2 133-134              COMDUM 135            COSTSDUM 136
            CRIMHIST 137         CRIMLIV 138-139         CRIMPTS 140-142
             DAYSDUM 143        DEFCONSL 144-145              DEPART 146
            DISPOSIT 147        DISTRICT 148-149        DRUGTYP1 150-152
        DRUGTYP2 153-155        DRUGTYP3 156-158        DRUGTYP4 159-161
        DRUGTYP5 162-164               DSIND 165             DSJANDC 166
              DSPLEA 167               DSPSR 168               DSSOR 169
         DUFROM1 170-171         DUFROM2 172-173             DUFROM3 174
             DUFROM4 175             DUFROM5 176           DUTO1 177-178
           DUTO2 179-180               DUTO3 181               DUTO4 182
               DUTO5 183             ECONDUM 184         EDUCATN 185-186
            ENCRYPT1 187            ENCRYPT2 188            FINECDUM 189
            FINEWAIV 190            HISPORIG 191              HOMDUM 192
        HRCOMSRV 193-196               INOUT 197              INTDUM 198
              IS924C 199             MARRIED 200        MOCOMCON 201-202
        MOHOMDET 203-204        MOINTCON 205-206        MONACCEP 207-208
         MONCIRC 209-210             MONRACE 211              MONSEX 212
              NEWCIT 213            NEWCNVTN 214             NEWEDUC 215
             NEWRACE 216          NOCOMP 217-218        NOCOUNTS 219-221
         NOUSTAT 222-223        NUMDEPEN 224-225        OFFTYPE2 226-227
          POINT1 228-229      POINT2 230-234 (2)          POINT3 235-236
             PRESENT 237             PRISDUM 238         PROBATN 239-241
             PROBDUM 242             RANGEPT 243         REASON1 244-246
         REASON2 247-249         REASON3 250-252             REL2PTS 253
        RESNTDOC 254-255             RESTDUM 256                SAFE 257
             SENTIMP 258             SENTPTS 259        SEXOFFNA 260-261
        SEXOFFNB 262-263             SOURCES 264             SUPRDUM 265
          SUPREL 266-268        TOTCHPTS 269-270         SEXACCA 271-272
         SEXACCB 273-274         TOTDAYS 275-276     TOTUNIT 277-281 (2)
            TYPEMONY 282        TYPEOTHS 283-284           UNIT1 285-286
           UNIT2 287-288           UNIT3 289-290           UNIT4 291-292
           UNIT5 293-294            VIOL1PTS 295              WEAPON 296
             WEAPSOC 297            XCRHISSR 298         XFOLSOR 299-300
               YEARS 301         DRUGMIN 302-305           GLMIN 306-309
           GLMAX 310-313         GUNMIN1 314-317         GUNMIN2 318-320
         STATMAX 321-325         STATMIN 326-329        TOTPRISN 330-333
         XMAXSOR 334-337         XMINSOR 338-341    DEFCONTX 342-366 (A)
    DESCRIP1 367-466 (A)    DESCRIP2 467-566 (A)    DESCRIP3 567-666 (A)
    DESCRIP4 667-766 (A)    DESCRIP5 767-866 (A)    CHEMDES1 867-966 (A)
   CHEMDES2 967-1066 (A)  CHEMDES3 1067-1166 (A)  CHEMDES4 1167-1266 (A)
  CHEMDES5 1267-1366 (A)  TYPEOTTX 1367-1466 (A)   ABERTXT 1467-1520 (A)
  REASTXT1 1521-1620 (A)  REASTXT2 1621-1720 (A)  REASTXT3 1721-1820 (A)
  REASTXT4 1821-1920 (A)  REASTXT5 1921-2020 (A)  REASTXT6 2021-2120 (A)
  POOFFICE 2121-2128 (A)      CH5G13ST 2129-2130      TIMSERVD 2131-2133
      TIMSERVM 2134-2136      SPECASSM 2137-2141  ABERCASE 2142-2149 (A)
    CHMAM1 2150-2160 (2)    CHMAM2 2161-2166 (2)             CHMAM3 2167
             CHMAM4 2168             CHMAM5 2169        CUNIT1 2170-2171
             CUNIT2 2172             CUNIT3 2173             CUNIT4 2174
             CUNIT5 2175      CHEMTYP1 2176-2177      CHEMTYP2 2178-2179
           CHEMTYP3 2180           CHEMTYP4 2181           CHEMTYP5 2182
   CAFROM1 2183-2189 (2)            CAFROM2 2190            CAFROM3 2191
            CAFROM4 2192            CAFROM5 2193     CATO1 2194-2201 (2)
              CATO2 2202              CATO3 2203              CATO4 2204
              CATO5 2205       REASON4 2206-2208       REASON5 2209-2211
            REASON6 2212             ABUSHI 2213            ABUSRHI 2214
      ADJOFLHI 2215-2217      ADJOFRHI 2218-2220      ADJR_BHI 2221-2223
      ADJR_CHI 2224-2225           ADJR_DHI 2226      ADJR_EHI 2227-2228
           ADJR_FHI 2229      ADJR_GHI 2230-2231           ADJR_HHI 2232
           ADJR_IHI 2233           ADJR_JHI 2234           ADJR_KHI 2235
           ADJR_LHI 2236           ADJR_MHI 2237           ADJR_NHI 2238
           ADJR_OHI 2239           ADJR_PHI 2240       ADJ_BHI 2241-2243
       ADJ_CHI 2244-2246       ADJ_DHI 2247-2249       ADJ_EHI 2250-2251
       ADJ_FHI 2252-2254       ADJ_GHI 2255-2256       ADJ_HHI 2257-2259
            ADJ_IHI 2260            ADJ_JHI 2261            ADJ_KHI 2262
            ADJ_LHI 2263            ADJ_MHI 2264            ADJ_NHI 2265
            ADJ_OHI 2266            ADJ_PHI 2267           AGGRLRHI 2268
      AGGROLHI 2269-2270      BASADJHI 2271-2273      BASADRHI 2274-2275
        BASEHI 2276-2277       BASERHI 2278-2279           FLGHTRHI 2280
           FLIGHTHI 2281      MITRLRHI 2282-2283      MITROLHI 2284-2285
           OBSTRCHI 2286           OBSTRRHI 2287           OFFVCRHI 2288
           OFFVCTHI 2289           RLADJRHI 2290           ROLADJHI 2291
           RSTRVCHI 2292           RSTRVRHI 2293       TERORHI 2294-2295
      TERORRHI 2296-2297            USKIDHI 2298           USKIDRHI 2299
           VCADJRHI 2300           VCTADJHI 2301           VULVCRHI 2302
           VULVCTHI 2303  GDLINEHI 2304-2311 (A)  GDSTATHI 2312-2319 (A)
        LOSSHI 2320-2329   GDREFHI 2330-2337 (A)       LOSSRHI 2338-2347
   NWSTAT1 2348-2362 (A)   NWSTAT2 2363-2377 (A)   NWSTAT3 2378-2392 (A)
   NWSTAT4 2393-2407 (A)   NWSTAT5 2408-2422 (A)   NWSTAT6 2423-2437 (A)
   NWSTAT7 2438-2452 (A)   NWSTAT8 2453-2467 (A)   NWSTAT9 2468-2482 (A)
  NWSTAT10 2483-2497 (A)  NWSTAT11 2498-2512 (A)  NWSTAT12 2513-2527 (A)
  NWSTAT13 2528-2542 (A)  NWSTAT14 2543-2557 (A)              CRPTS 2558
     MWGT1 2559-2572 (2)     MWGT2 2573-2585 (2)     MWGT3 2586-2596 (2)
     MWGT4 2597-2606 (2)     MWGT5 2607-2615 (2)      WGT1 2616-2627 (2)
      WGT2 2628-2638 (2)      WGT3 2639-2648 (2)      WGT4 2649-2657 (2)
      WGT5 2658-2665 (2)    DRGAM1 2666-2676 (2)    DRGAM2 2677-2685 (2)
    DRGAM3 2686-2694 (2)    DRGAM4 2695-2703 (2)    DRGAM5 2704-2711 (2)
     DATO1 2712-2721 (2)     DATO2 2722-2729 (2)     DATO3 2730-2736 (2)
              DATO4 2737              DATO5 2738   DAFROM1 2739-2748 (2)
   DAFROM2 2749-2756 (2)   DAFROM3 2757-2763 (2)       DAFROM4 2764-2767
            DAFROM5 2768   MWEIGHT 2769-2782 (2)           CH5G13YN 2783
           DEPART_S 2784           DEPART_D 2785  SENTDATE 2786-2796 (A)
       DOB 2797-2807 (A)
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   SAFETY    'SAFETY VALVE DUMMY INDICATOR' /
   ZONE      'SENTENCE TABLE GROUP' /
   AMTFINEC  '$ AMT OF FINE/COST OF SUPERVISION' /
   AMTREST   '$ AMT OF RESTITUTION' /
   AMTTOTAL  'SUM OF FINE/COST OF SUPERVISION OR RESTI' /
   COSTSUP   'DOLLAR AMOUNT OF COST OF SUPERVISION' /
   FINE      'DOLLAR AMOUNT OF FINE ORDERED' /
   TOTREST   'DOLLAR AMOUNT OF RESTITUTION ORDERED' /
   SENTTOT   'TOTAL PRISON SENTENCE IN MOS W/O ZEROS' /
   SENTTOT0  'TOTAL PRISON SENTENCE IN MOS WITH ZEROS' /
   SENSPLT   'TOTAL PRISON SENTENCE IN MOS W/O ZEROS' /
   SENSPLT0  'TOTAL PRISON SENTENCE IN MOS WITH ZEROS' /
   TIMESERV  'MIN PRISION TIME THE DEFENDANT WILL SERV' /
   USSCIDN   'UNIQUE CASE NUMBER' /
   ACCAP     'ARMED CAREER CRIMINAL STATUS APPLIED' /
   ACCCAT    'ADJUST IN CASE ACC STATUS AFFECTED PREVI' /
   ACCGDLN   'ACCEPTANCE, FINDINGS & GUIDELNE FACTORS' /
   ACCOFFLV  'LEVEL IF AFFECTED BY ARMED CAREER CRIMIN' /
   ACCTRESP  'NUM LEVELS SUBTR DUE TO ACCEPTANCE OF RE' /
   CAROFFAP  'CAREER OFFENDER STATUS APPLIED' /
   AGE       'DEFENDANT''S AGE AT TIME OF OFFENSE' /
   ALTDUM    'ALTERNATIVE SENTENCE' /
   ALTMO     'CUMULATIVE MONTHS OF ALTERNATIVE INCARCE' /
   AMENDYR   'GUIDELINE AMENDMENT YR USED IN CALCULATN' /
   ARMCRIM   'ACCEPTANCE, ARMED CAREER CRIMINAL' /
   CAROFFEN  'ACCEPTANCE, CAREER OFFENDER' /
   CAROFFLV  'LVL IF CHANGE DUE TO CAREER OFFNDER STAT' /
   CHAP2     'BASE OFFENSE LEVEL PLUS CHAPTER TWO SOCS' /
   CIRCDIST  'DISTRICTS(ORDER OF APPEARANCE IN ANNUAL)' /
   CITIZEN   'NATURE OF DEFENDANT''S CITIZENSHIP' /
   CITWHERE  'DEF''S COUNTRY OF CITIZENSHIP IF NOT U.S.' /
   COADJLEV  'COMBINED ADJUSTED OFFENSE LEVEL SUBTOTAL' /
   COMBDRG2  'AGGREGATION OF COMBDRG1' /
   COMDUM    'RECEIPT OF COMMUNITY CONFINEMENT' /
   COSTSDUM  'COST OF SUPERVISION GIVEN' /
   CRIMHIST  'DOES DEFENDANT HAVE ANY CRIMINAL HISTORY' /
   CRIMLIV   'OFFENSE LVL BASED ON CRIMINAL LIVELIHOOD' /
   CRIMPTS   'SUBTOTAL OF CRIM HIST POINTS APPLIED' /
   DAYSDUM   'RECEIPT OF ANY DAYS IN PRISON' /
   DEFCONSL  'TYPE OF DEFENSE COUNSEL USED IN INSTANT' /
   DEPART    'DEFENDANT''S DEPARTURE STATUS' /
   DISPOSIT  'DISPOSITION OF DEFENDANT''S CASE' /
   DISTRICT  'DISTRICT WHERE DEFENDANT WAS SENTENCED' /
   DRUGTYP1  'INDICATOR OF 1ST TYPE OF DRUG' /
   DRUGTYP2  'INDICATOR OF 2ND TYPE OF DRUG' /
   DRUGTYP3  'INDICATOR OF 3RD TYPE OF DRUG' /
   DRUGTYP4  'INDICATOR OF 4TH TYPE OF DRUG' /
   DRUGTYP5  'INDICATOR OF 5TH TYPE OF DRUG' /
   DSIND     'DOCUMENT STATUS FOR INDICTMENT OR INFORM' /
   DSJANDC   'DOCUMENT STATUS FOR JUDGMENT AND CONVICT' /
   DSPLEA    'DOCUMENT STATUS FOR PLEA' /
   DSPSR     'DOCUMENT STATUS FOR PRESENTENCE REPORT' /
   DSSOR     'DOCUMENT STATUS FOR STATEMENT OF REASONS' /
   DUFROM1   'LOW END UNIT DRUG WEIGHT FOR DRUGTYP1' /
   DUFROM2   'LOW END UNIT DRUG WEIGHT FOR DRUGTYP2' /
   DUFROM3   'LOW END UNIT DRUG WEIGHT FOR DRUGTYP3' /
   DUFROM4   'LOW END UNIT DRUG WEIGHT FOR DRUGTYP4' /
   DUFROM5   'LOW END UNIT DRUG WEIGHT FOR DRUGTYP5' /
   DUTO1     'HIGH END UNIT DRUG WEIGHT FOR DRUGTYP1' /
   DUTO2     'HIGH END UNIT DRUG WEIGHT FOR DRUGTYP2' /
   DUTO3     'HIGH END UNIT DRUG WEIGHT FOR DRUGTYP3' /
   DUTO4     'HIGH END UNIT DRUG WEIGHT FOR DRUGTYP4' /
   DUTO5     'HIGH END UNIT DRUG WEIGHT FOR DRUGTYP5' /
   ECONDUM   'FINE/COST OF SUPERVISION OR RESTITUTION' /
   EDUCATN   'DEFENDANT''S HIGHEST LEVEL OF EDUCATION' /
   ENCRYPT1  'USE OF ENCRYPTION OR SCRAMBLING TECHNOLO' /
   ENCRYPT2  'POINTS ASSESSED UNDER OBSTRUCTION OF JUS' /
   FINECDUM  'FINE/COST OF SUPERVISION AMOUNT GIVEN' /
   FINEWAIV  'WHETHER FINE (OR PORTION) WAS WAVED' /
   HISPORIG  'DEFENDANT''S ETHNIC ORIGIN' /
   HOMDUM    'RECEPIT OF HOME DETENTION' /
   HRCOMSRV  'NUMBER OF COMMUNITY SERVICE HRS ORDERED' /
   INOUT     'WHETHER DEFENDANT RECEIVED PRISON SENTEN' /
   INTDUM    'RECEIPT OF INTERMITTENT CONFINEMENT' /
   IS924C    'SUBSECTION FLAG' /
   MARRIED   'MARITAL STATUS OF OFFENDER' /
   MOCOMCON  'TERM OF COMMUNITY CONFINMNT ORDRD (MONTH' /
   MOHOMDET  'TERM OF HOME DETENTION ORDERED IN MOS.' /
   MOINTCON  'TERM OF INTERMITTENT CONFINEMENT ORDERED' /
   MONACCEP  '# OF LEVELS SBTRCTED FRM CMBND ADJSD OFF LVL' /
   MONCIRC   'CIRCUIT IN WHICH DEFENDANT WAS SENTENCED' /
   MONRACE   'DEFENDANT''S RACE' /
   MONSEX    'DEFENDANT''S GENDER' /
   NEWCIT    'CITIZENSHIP OF DEFENDANT' /
   NEWCNVTN  'SETTLED BY PLEA AGREEMENT OR TRIAL' /
   NEWEDUC   'EDUCATION OF DEFENDANT' /
   NEWRACE   'RACE OF DEFENDANT' /
   NOCOMP    'NUMBER OF GUIDELINE COMPUTATIONS' /
   NOCOUNTS  'NUMBER OF COUNTS OF CONVICTION' /
   NOUSTAT   'NUMBER OF UNIQUE STATUTES IN CASE' /
   NUMDEPEN  'NUM DEPENDENTS WHOM DFNDT SUPPORTS' /
   OFFTYPE2  'PRIM OFF TYP-CASE GENERATED FROM STAT MA' /
   POINT1    'NUM ONE-POINT INCIDENTS' /
   POINT2    'NUM TWO-POINT INCIDENTS' /
   POINT3    'NUM THREE-POINT INCIDENTS' /
   PRESENT   'OFFENDER''S PRE-SENTENCE DETENTION STATUS' /
   PRISDUM   'RECEIPT OF PRISON SENTENCE' /
   PROBATN   'TOTAL PROBATION ORDERED IN MONTHS' /
   PROBDUM   'RECEIPT OF PROBATION' /
   RANGEPT   'RANGE POINT ON SENTENCING' /
   REASON1   '1ST REASON FOR DEPARTURE SENTENCE IMPOSE' /
   REASON2   '2ND REASON FOR DEPARTURE SENTENCE IMPOSE' /
   REASON3   '3RD REASON FOR DEPARTURE SENTENCE IMPOSE' /
   REL2PTS   'NUM PTS FROM INSTANT OFFENSE < 2 YRS AFT' /
   RESNTDOC  'IF AND WHY A RESENTENCING OCCURRED' /
   RESTDUM   'RESTITUTION AMOUNT GIVEN' /
   SAFE      'SAFETY VALVE PROVISION APPLIED' /
   SENTIMP   'TYPE OF SENTENCE' /
   SENTPTS   'NUM PTS FROM INSTANT OFFENSE' /
   SEXOFFNA  'OFFENSE LEVEL UNDER 4B1.5 PRONG A' /
   SEXOFFNB  'OFFENSE LEVEL UNDER 4B1.5 PRONG B' /
   SOURCES   'CODED INFO BASED ON KNOWN COURT FINDINGS' /
   SUPRDUM   'RECEIPT OF SUPERVISED RELEASE' /
   SUPREL    'MONTHS OF SUPERVISED RELEASE ORDERED' /
   TOTCHPTS  'TOTAL NUM OF CRIM HIST POINTS APPLIED' /
   SEXACCA   'ACCEPTANCE, SEX OFFENDER: A' /
   SEXACCB   'ACCEPTANCE, SEX OFFENDER: B' /
   TOTDAYS   'TOTAL DAYS OF IMPRISONMENT ORDERED' /
   TOTUNIT   'NO. UNITS USED TO CALCULAT OFFENS LVL AD' /
   TYPEMONY  'FINE/COST OF SUPERVISION OR RESTITUTION' /
   TYPEOTHS  'OTHER TYPES OF SENTENCES ORDERED' /
   UNIT1     'UNIT OF MEASURE FOR 1ST TYPE OF DRUGS' /
   UNIT2     'UNIT OF MEASURE FOR 2ND TYPE OF DRUGS' /
   UNIT3     'UNIT OF MEASURE FOR 3RD TYPE OF DRUGS' /
   UNIT4     'UNIT OF MEASURE FOR 4TH TYPE OF DRUGS' /
   UNIT5     'UNIT OF MEASURE FOR 5TH TYPE OF DRUGS' /
   VIOL1PTS  'NUM PTS FOR EACH PRIOR SENTENCE' /
   WEAPON    'SOC WEAPON ENHANCEMENT OR CONVICTION' /
   WEAPSOC   'SOC ENHANCEMENT FOR A WEAPON PRESENT' /
   XCRHISSR  'DEFENDANTS FINAL CRIMINAL HSTRY CATEGORY' /
   XFOLSOR   'FINAL OFFENSE LEVEL' /
   YEARS     'CATEGORIES OF AGE RANGES' /
   DRUGMIN   'MANDATRY MIN SENTNCE (MONTHS) FOR DRUG' /
   GLMIN     'ADJUSTED GUIDELINE RANGE MINIMUM' /
   GLMAX     'ADJUSTED GUIDELINE RANGE MAXIMUM' /
   GUNMIN1   'MANDATRY MIN SENTNCE UNDR 18.924C (MONTH' /
   GUNMIN2   'MANDATRY MIN SENTNCE UNDR 18.924E (MONTH' /
   STATMAX   'TOTAL STATUTORY MAX PRISON TERM IN MOS.' /
   STATMIN   'TOTAL STATUTORY MIN PRISON TERM IN MOS.' /
   TOTPRISN  'TOTAL MONTHS OF IMPRISONMENT ORDERED' /
   XMAXSOR   'MAX GUIDELINE RANGE FOR IMPRISONMENT' /
   XMINSOR   'MIN GUIDELINE RANGE FOR IMPRISONMENT' /
   DEFCONTX  'TYPE OF DEFENSE COUNSEL' /
   DESCRIP1  'DRUGTYP1-OTHER' /
   DESCRIP2  'DRUGTYP2-OTHER' /
   DESCRIP3  'DRUGTYP3-OTHER' /
   DESCRIP4  'DRUGTYP4-OTHER' /
   DESCRIP5  'DRUGTYP5-OTHER' /
   CHEMDES1  'CHEMTYP-OTHER' /
   CHEMDES2  'CHEMTYP-OTHER' /
   CHEMDES3  'CHEMTYP-OTHER' /
   CHEMDES4  'CHEMTYP-OTHER' /
   CHEMDES5  'CHEMTYP-OTHER' /
   TYPEOTTX  'FILLED WHEN TYPEOTHS IS 77/OTHER' /
   ABERTXT   'TEXT DESCRIPTION OF ABBERRATIONS' /
   REASTXT1  'REASONS FOR DEPARTURE NOT IN REASON1' /
   REASTXT2  'REASONS FOR DEPARTURE NOT IN REASON2' /
   REASTXT3  'REASONS FOR DEPARTURE NOT IN REASON3' /
   REASTXT4  'REASONS FOR DEPARTURE NOT IN REASON4' /
   REASTXT5  'REASONS FOR DEPARTURE NOT IN REASON5' /
   REASTXT6  'REASONS FOR DEPARTURE NOT IN REASON6' /
   POOFFICE  'CODE FOR PSR PREPARATN PROBATION OFFIC3' /
   CH5G13ST  'AMOUNT OF CREDIT GIVEN UNDER 5G1.3' /
   TIMSERVD  'NUM DAYS CREDITD TO OFFNDER AT SENTNCING' /
   TIMSERVM  'NUM MONTHS CREDITD OFFNDER AT SENTENCING' /
   SPECASSM  '$ VALUE OF SPECIAL ASSESSMENT FEE' /
   ABERCASE  'ABERRATION IN CASE' /
   CHMAM1    'AMOUNT OF 1ST CHEMICAL TYPE' /
   CHMAM2    'AMOUNT OF 2ND CHEMICAL TYPE' /
   CHMAM3    'AMOUNT OF 3RD CHEMICAL TYPE' /
   CHMAM4    'AMOUNT OF 4TH CHEMICAL TYPE' /
   CHMAM5    'AMOUNT OF 5TH CHEMICAL TYPE' /
   CUNIT1    'UNIT OF MEASURE FOR 1ST TYPE OF CHEMICAL' /
   CUNIT2    'UNIT OF MEASURE FOR 2ND TYPE OF CHEMICAL' /
   CUNIT3    'UNIT OF MEASURE FOR 3RD TYPE OF CHEMICAL' /
   CUNIT4    'UNIT OF MEASURE FOR 4TH TYPE OF CHEMICAL' /
   CUNIT5    'UNIT OF MEASURE FOR 5TH TYPE OF CHEMICAL' /
   CHEMTYP1  'INDICATOR OF 1ST TYPE OF CHEMICAL' /
   CHEMTYP2  'INDICATOR OF 2ND TYPE OF CHEMICAL' /
   CHEMTYP3  'INDICATOR OF 3RD TYPE OF CHEMICAL' /
   CHEMTYP4  'INDICATOR OF 4TH TYPE OF CHEMICAL' /
   CHEMTYP5  'INDICATOR OF 5TH TYPE OF CHEMICAL' /
   CAFROM1   'CHEMICAL WEIGHT RANGE LOW CHEMTYP1' /
   CAFROM2   'CHEMICAL WEIGHT RANGE LOW CHEMTYP2' /
   CAFROM3   'CHEMICAL WEIGHT RANGE LOW CHEMTYP3' /
   CAFROM4   'CHEMICAL WEIGHT RANGE LOW CHEMTYP4' /
   CAFROM5   'CHEMICAL WEIGHT RANGE LOW CHEMTYP5' /
   CATO1     'CHEMICAL WEIGHT RANGE HIGH CHEMTYP1' /
   CATO2     'CHEMICAL WEIGHT RANGE HIGH CHEMTYP2' /
   CATO3     'CHEMICAL WEIGHT RANGE HIGH CHEMTYP3' /
   CATO4     'CHEMICAL WEIGHT RANGE HIGH CHEMTYP4' /
   CATO5     'CHEMICAL WEIGHT RANGE HIGH CHEMTYP5' /
   REASON4   '4TH REASON FOR DEPARTURE SENTENCE IMPOSE' /
   REASON5   '5TH REASON FOR DEPARTURE SENTENCE IMPOSE' /
   REASON6   '6TH REASON FOR DEPARTURE SENTENCE IMPOSE' /
   ABUSHI    'HIGHEST COMPUTATION OF ABUS1-ABUS42' /
   ABUSRHI   'HIGHEST COMPUTATION OF ABUSR1-ABUSR42' /
   ADJOFLHI  'HIGHEST COMPUTATION OF ADJSTD OFFNS LVL' /
   ADJOFRHI  'HIGHEST COMPTN OF ADJ OFFNS LVL-REF GDLINE' /
   ADJR_BHI  'HIGHEST OF 1ST SOC ADJ FOR REF GDLNS' /
   ADJR_CHI  'HIGHEST 2ND SOC ADJ FOR REF GDLNS' /
   ADJR_DHI  'HIGHEST 3RD SOC ADJ FOR REF GDLNS' /
   ADJR_EHI  'HIGHEST 4TH SOC ADJ FOR REF GDLNS' /
   ADJR_FHI  'HIGHEST 5TH SOC ADJ FOR REF GDLNS' /
   ADJR_GHI  'HIGHEST 6TH SOC ADJ FOR REF GDLNS' /
   ADJR_HHI  'HIGHEST 7TH SOC ADJ FOR REF GDLNS' /
   ADJR_IHI  'HIGHEST 8TH SOC ADJ FOR REF GDLNS' /
   ADJR_JHI  'HIGHEST 9TH SOC ADJ FOR REF GDLNS' /
   ADJR_KHI  'HIGHEST 10TH SOC ADJ FOR REF GDLNS' /
   ADJR_LHI  'HIGHEST 11TH SOC ADJ FOR REF GDLNS' /
   ADJR_MHI  'HIGHEST 12TH SOC ADJ FOR REF GDLNS' /
   ADJR_NHI  'HIGHEST 13TH SOC ADJ FOR REF GDLNS' /
   ADJR_OHI  'HIGHEST 14TH SOC ADJ FOR REF GDLNS' /
   ADJR_PHI  'HIGHEST 15TH SOC ADJ FOR REF GDLNS' /
   ADJ_BHI   'HIGHEST 1ST SOC ADJUSTMENT' /
   ADJ_CHI   'HIGEST 2ND SOC ADJUSTMENT' /
   ADJ_DHI   'HIGHEST 3RD SOC ADJUSTMENT' /
   ADJ_EHI   'HIGHEST 4TH SOC ADJUSTMENT' /
   ADJ_FHI   'HIGHEST 5TH SOC ADJUSTMENT' /
   ADJ_GHI   'HIGHEST 6TH SOC ADJUSTMENT' /
   ADJ_HHI   'HIGHEST 7TH SOC ADJUSTMENT' /
   ADJ_IHI   'HIGHEST 8TH SOC ADJUSTMENT' /
   ADJ_JHI   'HIGHEST 9TH SOC ADJUSTMENT' /
   ADJ_KHI   'HIGHEST 10TH SOC ADJUSTMENT' /
   ADJ_LHI   'HIGHEST 11TH SOC ADJUSTMENT' /
   ADJ_MHI   'HIGHEST 12TH SOC ADJUSTMENT' /
   ADJ_NHI   'HIGHEST 13TH SOC ADJUSTMENT' /
   ADJ_OHI   'HIGHEST 14TH SOC ADJUSTMENT' /
   ADJ_PHI   'HIGHEST 15TH SOC ADJUSTMENT' /
   AGGRLRHI  'HIGHEST ADJ FOR AGGRVTNG ROLE FOR REF GDLNS' /
   AGGROLHI  'HIGHEST ADJUSTMENT FOR AGGRAVATING ROLE' /
   BASADJHI  'HIGHEST ADJ-CH2 GDLNS REQ INCRS OR BASE ADJ' /
   BASADRHI  'HIGHEST ADJ-CH2 GDLNS RQ BAS ADJ FOR REF GDLNS' /
   BASEHI    'HIGHEST BASE OFFENSE LEVELS FOR CH2GDLNS' /
   BASERHI   'HIGHEST BASE OFENS LVL CMPUTATNS FOR REF GDLIN' /
   FLGHTRHI  'HIGHEST ADJ-RCKLSS ENDNG DRNG FLGHT-REF GDLIN' /
   FLIGHTHI  'HIGHEST ADJ-RCKLSS ENDNGRMNT DURING FLIGH' /
   MITRLRHI  'HIGHEST ADJ FOR DEF''S MTGTNG ROLE-REF GDLIN' /
   MITROLHI  'HIGHEST ADJ FOR DEF''S MTGTNG ROLE' /
   OBSTRCHI  'HIGHEST ADJ FOR OBSTRUCTION OF JUSTICE' /
   OBSTRRHI  'HIGHEST ADJ FOR OBSTRCTN OF JUST FOR REF GDLIN' /
   OFFVCRHI  'HIGHEST ADJ FOR OFFCL VICT FOR REF GDLINES' /
   OFFVCTHI  'HIGHEST ADJ FOR OFFICIAL VICTIM' /
   RLADJRHI  'HIGHEST ROLE ADJ APPLIED FOR REF GDLIN' /
   ROLADJHI  'HIGHEST ROLE ADJUSTMENT WAS APPLIED' /
   RSTRVCHI  'HIGHEST ADJ FOR RESTRAINT OF VICTIM' /
   RSTRVRHI  'HIGHEST ADJ FOR RESTRAINT FOR REF GDLNS' /
   TERORHI   'HIGHEST ADJ FOR INTERNATIONAL TERRORISM' /
   TERORRHI  'HIGHEST ADJ-INT''L TERRORISM FOR REF GDLNS' /
   USKIDHI   'HIGHEST ADJUSTMENT FOR USE OF A MINOR' /
   USKIDRHI  'HIGHEST ADJ FOR USE OF A MINOR FOR REF GDLN' /
   VCADJRHI  'HIGHEST VICT-RELATD ADJS APPLD-REF GDLNS' /
   VCTADJHI  'HIGHEST VICT-RELATD ADJS APPLD-SENT GDLN' /
   VULVCRHI  'HIGHEST ADJ FOR VULNRBL VICT FOR REF GDLN' /
   VULVCTHI  'HIGHEST ADJ FOR VULNERABLE VICTIM' /
   GDLINEHI  'HIGHEST COMPUTATION OF GDLINE' /
   GDSTATHI  'HIGHEST STATUTORY GUIDELINE APPLIED' /
   LOSSHI    'HIGHEST COMPUTATION OF LOSS' /
   GDREFHI   'HIGHEST REFERENCE GUIDELINE APPLIED' /
   LOSSRHI   'HIGHEST COMPUTATION OF LOSSGNR' /
   NWSTAT1   'UNIQUE STATUTES (1ST MENTION)' /
   NWSTAT2   'UNIQUE STATUTES (2ND MENTION)' /
   NWSTAT3   'UNIQUE STATUTES (3RD MENTION)' /
   NWSTAT4   'UNIQUE STATUTES (4TH MENTION)' /
   NWSTAT5   'UNIQUE STATUTES (5TH MENTION)' /
   NWSTAT6   'UNIQUE STATUTES (6TH MENTION)' /
   NWSTAT7   'UNIQUE STATUTES (7TH MENTION)' /
   NWSTAT8   'UNIQUE STATUTES (8TH MENTION)' /
   NWSTAT9   'UNIQUE STATUTES (9TH MENTION)' /
   NWSTAT10  'UNIQUE STATUTES (10TH MENTION)' /
   NWSTAT11  'UNIQUE STATUTES (11TH MENTION)' /
   NWSTAT12  'UNIQUE STATUTES (12TH MENTION)' /
   NWSTAT13  'UNIQUE STATUTES (13TH MENTION)' /
   NWSTAT14  'UNIQUE STATUTES (14TH MENTION)' /
   CRPTS     'CRIMINAL HISTORY POINTS AWARDED' /
   MWGT1     'MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG' /
   MWGT2     'MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG' /
   MWGT3     'MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG' /
   MWGT4     'MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG' /
   MWGT5     'MARIJUANA WGT EQUIVAL (IN GRAMS) OF DRUG' /
   WGT1      'GRAM AMT OF 1ST DRUG TYPE' /
   WGT2      'GRAM AMT OF 2ND DRUG TYPE' /
   WGT3      'GRAM AMT OF 3RD DRUG TYPE' /
   WGT4      'GRAM AMT OF 4TH DRUG TYPE' /
   WGT5      'GRAM AMT OF 5TH DRUG TYPE' /
   DRGAM1    'AMOUNT OF 1ST DRUG TYPE' /
   DRGAM2    'AMOUNT OF 2ND DRUG TYPE' /
   DRGAM3    'AMOUNT OF 3RD DRUG TYPE' /
   DRGAM4    'AMOUNT OF 4TH DRUG TYPE' /
   DRGAM5    'AMOUNT OF 5TH DRUG TYPE' /
   DATO1     'DRUG WEIGHT RANGE HIGH DRUGTYP1' /
   DATO2     'DRUG WEIGHT RANGE HIGH DRUGTYP2' /
   DATO3     'DRUG WEIGHT RANGE HIGH DRUGTYP3' /
   DATO4     'DRUG WEIGHT RANGE HIGH DRUGTYP4' /
   DATO5     'DRUG WEIGHT RANGE HIGH DRUGTYP5' /
   DAFROM1   'DRUG WEIGHT RANGE LOW DRUGTYP1' /
   DAFROM2   'DRUG WEIGHT RANGE LOW DRUGTYP2' /
   DAFROM3   'DRUG WEIGHT RANGE LOW DRUGTYP3' /
   DAFROM4   'DRUG WEIGHT RANGE LOW DRUGTYP4' /
   DAFROM5   'DRUG WEIGHT RANGE LOW DRUGTYP5' /
   MWEIGHT   'MARIJUANA WGT EQUIVAL (IN GRAMS) OF OTHE' /
   CH5G13YN  'DUMMY INDICATOR OF CREDIT UNDER 5G1.3' /
   DEPART_S  'DEPARTURE STATUS IN SOURCEBOOK' /
   DEPART_D  'STATUS AND REASON FOR DEPARTURE' /
   SENTDATE  'DATE ON WHICH DEFENDANT WAS SENTENCED' /
   DOB       'DEFENDANT''S DATE OF BIRTH' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAFETY    ' ' 'Missing' /
   ZONE      ' ' 'Missing' 'A' 'Zone A' 'B' 'Zone B' 'C' 'Zone C'
             'D' 'Zone D' /
   AMTFINEC  0 'No Fine/Cost of Supervision Ordered' /
   AMTREST   0 'No Restitution Ordered' /
   AMTTOTAL  0 'No Fine/Cost of Supervision or Restituti' /
   COSTSUP   0 'No Cost Specified' 999997 'Total Cost Ord, No Amt Specified'
             /
   FINE      0 'No fine' 999999997 'Fine Ordered, Amt Not Specified' /
   TOTREST   0 'None' 9999999997 'Restitution Ordered, Amt Not Specified' /
   SENTTOT   470.00 'Life' 990.00 '990 Months or More' /
   SENTTOT0  .00 'Probation' 470.00 'Life' 990.00 '990 Months or More' /
   SENSPLT   470.00 'Life' 990.00 '990 Months or More' /
   SENSPLT0  .00 'Probation' 470.00 'Life' 990.00 '990 Months or More' /
   TIMESERV  .00 'No Months/Less than 1 month' 996.00 'Life Sentence'
             997.00 'Prison Ordered, but no term specified' /
   ACCAP     0 'Not Applied' 1 'Applied' /
   ACCCAT    1 'Category I' 2 'Category II' 3 'Category III' 4 'Category IV'
             5 'Category V' 6 'Category VI' /
   ACCGDLN   0 'Court DOES NOT Accept' 1 'Court DOES Accept'
             2 'Undocumented Value' 8 'Inapplicable' /
   ACCTRESP  -4 'Applied (Not In USSG Manual)' -3 'Adjustment Applied'
             -2 'Adjustment Applied' -1 'Applied (Not In USSG Manual)'
             0 'Adjustment Not Applied' /
   CAROFFAP  0 'No, Career Offender Status Not Applied'
             1 'Yes, Career Offender Applied' /
   ALTDUM    0 'No' 1 'Yes' /
   ALTMO     97 'Alternatives, Not Specified' /
   ARMCRIM   -4 'Applied (Not In USSG Manual)' -3 'Adjustment Applied'
             -2 'Adjustment Applied' -1 'Applied (Not In USSG Manual)'
             0 'Adjustment Not Applied' /
   CAROFFEN  -4 'Applied (Not In USSG Manual)' -3 'Adjustment Applied'
             -2 'Adjustment Applied' -1 'Applied (Not In USSG Manual)'
             0 'Adjustment Not Applied' /
   CITIZEN   1 'United States Citizen' 2 'Resident/Legal Alien'
             3 'Illegal Alien' 4 'Not a US Citizen/Alien Status Unknown' /
   CITWHERE  20 'Cuba' 21 'Argentina' 22 'Bahamas' 23 'Belize' 24 'Bolivia'
             25 'Canada' 26 'Chile' 27 'China' 28 'Colombia' 29 'Cuba'
             30 'Dominican Republic' 31 'Ecuador' 32 'El Salvador'
             33 'France' 34 'Germany' 35 'Ghana' 36 'Gr Britain/UK/England'
             37 'Guatemala' 38 'Guyana' 39 'Haiti' 40 'Honduras' 41 'India'
             42 'Iran' 43 'Israel' 44 'Italy' 45 'Jamaica' 46 'Jordan'
             47 'Korea (North/South)' 48 'Lebanon' 49 'Mexico' 50 'Nicaragua'
             51 'Nigeria' 52 'Pakistan' 53 'Panama' 54 'Peru'
             55 'Philippines' 56 'USSR/Russ/Rep Sov St' 57 'Thailand'
             58 'Trinidad and Tobago' 59 'Venezuela'
             60 'Vietnam (North/South)' 61 'Afghanistan' 62 'Albania'
             63 'Antigua and Barbuda' 64 'Australia' 65 'Bangladesh'
             66 'Barbados' 67 'Benin' 68 'Brazil' 69 'Costa Rica' 70 'Greece'
             71 'Guinea' 72 'Hong Kong' 73 'Indonesia' 74 'Iraq' 75 'Ireland'
             76 'Kuwait' 77 'OTHER country code' 78 'Laos' 79 'Liberia'
             80 'Malaysia' 81 'Netherlands' 82 'Poland' 83 'Romania'
             84 'Portugal' 85 'Spain' 86 'St. Kitts' 87 'Syria' 88 'Taiwan'
             89 'Togo' 90 'Yemen' 91 'Yugoslavia' 100 'Algeria' 101 'Andorra'
             102 'Angola' 103 'Armenia' 104 'Austria' 105 'Azerbaijan'
             106 'Bahrain' 107 'Belarus' 108 'Belgium' 109 'Bhutan'
             110 'Bosnia and Herzegovina' 111 'Botswana'
             112 'Brunei Darussalem' 113 'Bulgaria' 114 'Burkina Faso'
             115 'Burundi' 116 'Cambodia' 117 'Cameroon' 118 'Cape Verde'
             119 'Centrl African Repub' 120 'Chad' 121 'Comoros' 122 'Congo'
             123 'Cote dlvoire' 124 'Croatia' 125 'Cyprus'
             126 'Czech Republic' 127 'Denmark' 128 'Djibouti' 129 'Dominica'
             130 'Egypt' 131 'Eritrea' 132 'Estonia' 133 'Ethiopia'
             134 'Fiji' 135 'Finland' 136 'Gabon' 137 'Gambia' 138 'Georgia'
             139 'Grenada' 140 'Hungary' 141 'Iceland' 142 'Japan'
             143 'Kazakhatan' 144 'Kenya' 145 'Kyrqyzstan' 146 'Latvia'
             147 'Lesotho' 148 'Libyan Arab Jamahiriya' 149 'Liechtenstein'
             150 'Lithuania' 151 'Luxembourg' 152 'Madagascar' 153 'Malawi'
             154 'Maldives' 155 'Mali' 156 'Malta' 157 'Marshall Islands'
             158 'Mauritania' 159 'Mauritius' 160 'Micronesia' 161 'Moldova'
             162 'Monaco' 163 'Mongolia' 164 'Morocco' 165 'Mozambique'
             166 'Myanmar' 167 'Namibia' 168 'Nepal' 169 'New Zealand'
             170 'Norway' 171 'Oman' 172 'Palau' 173 'Papua New Guinea'
             174 'Paraguay' 175 'Qatar' 176 'Rwanda' 177 'Saint Lucia'
             178 'Saint Vincent/Grenadines' 179 'Samoa' 180 'San Marino'
             181 'Sao Tomo and Principe' 182 'Saudi Arabia' 183 'Senegal'
             184 'Seychelles' 185 'Sierra Leone' 186 'Singapore'
             187 'Slovakia' 188 'Slovenia' 189 'Solomon Islands'
             190 'Somalia' 191 'South Africa' 192 'Sri Lanka' 193 'Sudan'
             194 'Suriname' 195 'Swaziland' 196 'Sweden' 197 'Switzerland'
             198 'Tajikistan' 199 'Tanzania' 200 'Tunisia' 201 'Turkey'
             202 'Turkmenistan' 203 'Uganda' 204 'Ukraine'
             205 'United Arab Emirates' 206 'Uruguay' 207 'Uzbekistan'
             208 'Vanuatu' 209 'Zambia' 210 'Zimbabwe'
             211 'United States (N/A)' 212 'Bermuda' 213 'Montserrat'
             214 'Macedonia' 215 'St Kitts - Nevis' 216 'Tonga' /
   COMBDRG2  1 'Cocaine' 2 'Crack' 3 'Heroin' 4 'Marijuana'
             6 'Methamphetamine' 8 'LSD' 77 'Other' /
   COMDUM    0 'No' 1 'Yes' /
   COSTSDUM  0 'No Amount Given for Cost of Supervision'
             1 'Amount Given for Cost of Supervision' /
   CRIMHIST  0 'No Criminal History' 1 'Yes, There Is Criminal History' /
   CRIMLIV   0 'Defendant Does Not Earn A Living From th' /
   CRIMPTS   0 'No History Points Applied' /
   DAYSDUM   0 'No Prison Beyond That Specified in TOTPR'
             1 'One Month Added to TOTPRISN' /
   DEFCONSL  1 'Privately Retained Counsel' 2 'Court Appointed Counsel'
             3 'Federal Public Defender' 4 'Defendant Represented Self'
             5 'Waived Rights to Counsel' 77 'Other Arrangements for Counsel'
             /
   DEPART    0 'No Departure' 1 'Upward Departure' 2 'Downward Departure'
             3 'Substantial Assistance' 4 'Early Disposition Program'
             5 'Substantial Assistance and Other Downward Departure'
             6 'EDP and Other Downward Departure'
             7 'EDP and Substantial Assistance' 8 'Inapplicable'
             9 'EDP and Sub. Assist. and Other Down. Depart.' /
   DISPOSIT  0 'Undocumented Value' 1 'Guilty Plea' 2 'Nolo Contendere'
             3 'Jury Trial' 4 'Trial by Judge or Bench Trial'
             5 'Both Guilty Plea and Trial (>1count)' /
   DSIND     0 'Not Received' 1 'Received Indictment'
             2 'Received Information' 3 'Other Charging Document Received'
             6 'Not Received, Under Court Seal'
             7 'Received, Under Court Seal'
             8 'Indictment Will Never Be Available' /
   DSJANDC   0 'Not Received' 1 'Received J & C'
             2 'Received Alternate Sentencing Document'
             6 'Did Not Receive, Under Court Seal'
             7 'Received, Under Court Seal' 8 'Order Will Never Be Available'
             /
   DSPLEA    0 'Not Received' 1 'Received Written Agreement'
             2 'Received Alternate Document' 3 'Oral Plea'
             4 'Received w/Court Order Seal'
             5 'Written, Will never be Received' 6 'Did Not Receive, Sealed'
             7 'Received, Sealed' 8 'N/A (e.g. Trial)'
             9 'Guilty Plea, Type Indeterminable' /
   DSPSR     0 'Not Received' 1 'Received PSR'
             2 'Received Alternate Document'
             6 'Did Not Receive, Under Court Seal'
             7 'Received, Under Court Seal' 8 'Waived/Will Never Receive' /
   DSSOR     0 'Not Received' 1 'Received SOR Form'
             2 'Received Transcript or Partial SOR'
             6 'Did Not Receive, Under Court Seal'
             7 'Received, Under Court Seal' 8 'N/A (e.g. Not Ordered)' /
   DUFROM1   1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUFROM2   1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUFROM3   1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUFROM4   1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUFROM5   1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUTO1     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUTO2     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUTO3     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUTO4     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   DUTO5     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' /
   ECONDUM   0 'Neither Fine/Cost of Supervision or Rest'
             1 'Fine/Cost of Supervision, Restitution, o' /
   EDUCATN   0 'No Schooling' 1 'One Yr School Completed'
             2 'Two Yr School Completed' 3 'Three Yr School Completed'
             4 'Four Yr School Completed' 5 'Five Yr School Completed'
             6 'Six Yr School Completed' 7 'Seven Yr School Completed'
             8 'Eight Yr School Completed' 9 'Nine Yr School Completed'
             10 'Ten Yr School Completed' 11 'Eleven Yr School Completed'
             12 'High School Graduate' 13 'One Year Of College /Freshman'
             14 'Two Years Of College /Sophomore'
             15 'Three Years Of College /Junior' 16 'College Graduate'
             21 'G.E.D. (General Education Diploma)'
             22 'Trade Or Vocational Degree' 23 'Associate Degree (A.A.)'
             24 'Grad Degree (Mst, J.D., M.D., Ph.D., etc'
             31 'Some Elementary School' 32 'Some High School'
             33 'Some Trade or Vocational School' 34 'Some College'
             35 'Some Graduate School' 36 'Military Training'
             37 'Middle School /Junior High' /
   ENCRYPT1  0 'No' 1 'Yes' /
   ENCRYPT2  0 'No' 1 'Yes' /
   FINECDUM  0 'No Fine or Cost of Supervision Amt Speci'
             1 'Fine/Cost of Supervision Amount Specifie' /
   FINEWAIV  0 'No Waiver Stated' 1 'Waiver Specifically Stated'
             9 'Relevant Documents Missing' /
   HISPORIG  0 'Information on Hispanic Origin Unavailable' 1 'Non-Hispanic'
             2 'Hispanic' /
   HOMDUM    0 'No' 1 'Yes' /
   HRCOMSRV  9997 'Comm Service Ordered, Term Not Specified' /
   INOUT     0 'Received Prison Sentence' 1 'Received Non-Prison Sentence' /
   INTDUM    0 'No' 1 'Yes' /
   IS924C    0 'No 18.924(c) Charges (Includes Missing)'
             1 'At Least One 18.924(c) Charge Present' /
   MARRIED   1 'Single' 2 'Married' 3 'Cohabitating (not legally married)'
             4 'Divorced' 5 'Widowed' 6 'Separated' /
   MOCOMCON  0 'No Community Confinement Ordered'
             97 'Comm Confinement Ordered But No Term Spe' /
   MOHOMDET  0 'No Home Detention ordered'
             97 'Home Detentention Ord Term Not Specified' /
   MOINTCON  0 'No Intermittent Confinement Ordered'
             97 'Intermittent Confinement Ord No Term Spe' /
   MONACCEP  -4 'Applied (Not in USSG Manual)' -3 'Adjustment Applied'
             -2 'Adjustment Applied' -1 'Applied (Not in USSG Manual)'
             0 'Adjustment Not Applied' /
   MONRACE   1 'White/Caucasian' 2 'Black'
             3 'American Indian or Alaskan Native'
             4 'Asian or Pacific Islander' 5 'Multi-racial' 7 'Other' /
   MONSEX    0 'Male' 1 'Female' /
   NEWCIT    0 'U.S.' 1 'Non-U.S. (Legal and Illegal Aliens)' /
   NEWCNVTN  0 'Plea' 1 'Trial' /
   NEWEDUC   1 'Less Than H.S. Graduate' 3 'H.S. Graduate' 5 'Some College'
             6 'College Graduate' /
   NEWRACE   1 'White' 2 'Black' 3 'Hispanic' 6 'Other' /
   NUMDEPEN  0 'No Dependents' 97 'Some Dependents, Exact Number Unknown' /
   OFFTYPE2  1 'Murder' 2 'Manslaughter' 3 'Kidnaping /Hostage'
             4 'Sexual Abuse' 5 'Assault'
             6 'Bank Robbery (includes OFFTYPE 7, other' 9 'Arson'
             10 'Drugs: Trafficking' 11 'Drugs: Communication Facilities'
             12 'Drugs: Simple Possession'
             13 'Firearms: Use (includes OFFTYPE 14, Fire'
             15 'Burglary/Breaking and Entering' 16 'Auto Theft' 17 'Larceny'
             18 'Fraud' 19 'Embezzlement' 20 'Forgery / Counterfeiting'
             21 'Bribery' 22 'Tax Offenses' 23 'Money Laundering'
             24 'Racketeering (includes OFFTYPE 8, Extort'
             25 'Gambling / Lottery' 26 'Civil Rights Offenses'
             27 'Immigration' 28 'Pornography / Prostitution'
             29 'Offenses in Prisons' 30 'Admin of Just-Related'
             31 'Environmental, Game, Fish, and Wildlife'
             32 'National Defense Offenses' 33 'Antitrust Violations'
             34 'Food and Drug Offenses'
             35 'Traffic Violations and Other Offenses' /
   POINT1    0 'None' /
   POINT2    .00 'None' /
   POINT3    0 'None' /
   PRESENT   1 'In Custody' 2 'Out on Bail/Bond'
             3 'Released on Own Recognizance' 4 'Other' /
   PRISDUM   0 'No' 1 'Yes' /
   PROBATN   0 'No Probation Ordered'
             997 'Probation Ordered But No Term Specified' /
   PROBDUM   0 'No' 1 'Yes' /
   RANGEPT   0 'Missing/Logic Problems' 1 'Guideline Minimum'
             2 'Lower Half of Range' 3 'Midpoint of Range'
             4 'Upper Half of Range' 5 'Guideline Maximum'
             6 'Guideline Min/Max are Equal' /
   REASON1   0 'No Reason Given' 998 'Inapplicable' 999 'Undocumented Value'
             /
   REASON2   0 'No Reason Given' 998 'Inapplicable' 999 'Undocumented Value'
             /
   REASON3   0 'No Reason Given' 998 'Inapplicable' 999 'Undocumented Value'
             /
   REL2PTS   0 'None' 1 'Adj For Offense < 2 Yr Aft Release'
             2 'Adj For Comm Of Offense < 2 Yr Aft Rel' /
   RESNTDOC  0 'No Resentencing Documents Received'
             1 'Amended Sentence Received (No Specific R'
             2 'Corrected Sentence Received (No Specific'
             3 'Modified Sentence Received (No Specific'
             4 'Correction of Sentence on Remand (FRCP 3'
             5 'Reduct of Sent for Circs: Substan Assis'
             6 'Correct for Arith, Cler or Tech Reas (FR'
             7 'Mod of Supervision Conditions (18..3563c'
             8 'Mod of Term of Impris for Extr. Reasons'
             9 'Mod of Term of Impris for Retroactive Am'
             10 'Motion to Vacate or Set Aside Sentence ('
             11 'Resentencing or Mandatory Life Imprisonm'
             12 'Modification of Restitution Order (18..3'
             13 'Other Documents Received' 14 'Docs Sealed, Not Received'
             15 'Docs Sealed, Received' 16 'Undocumented Value' /
   RESTDUM   0 'No' 1 'Yes' /
   SAFE      0 'Not Applied' 1 'Applied' 2 'Sentenced Below Mandatory' /
   SENTIMP   0 'No Prison/Probation (Fine Only)'
             1 'Prison Only (No Alternatives)'
             2 'Prison + Confinement Conditions'
             3 'Probation + Confinement Conditions' 4 'Probation Only' /
   SENTPTS   0 'None' 1 'Adjust Applied (Not in Gdlines)'
             2 'Adjustment Applied' /
   SOURCES   1 'Info Repr KNOWN COURT' 2 'Post-Sentence Report Received'
             3 'PSR Is Coded (Insuff SOR)' 5 'PSR Is Coded (No SOR)'
             6 'Sec 18 Par924(c) Only' 8 'No Analogous Guideline'
             9 'PSR Waived, Missing, or Multiple OFfense' /
   SUPRDUM   0 'No' 1 'Yes' /
   SUPREL    0 'No Supervised Release Ordered' 996 'Life Term Ordered'
             997 'Supv Rel Ordered, No Term Specified' /
   TOTCHPTS  0 'None' /
   SEXACCA   -3 'Adjustment Applied' -2 'Adjustment Applied'
             -1 'Applied (Not in USSG Manual)' 0 'Adjustment not Applied' /
   SEXACCB   -3 'Adjustment Applied' -2 'Adjustment Applied'
             -1 'Applied (Not in USSG Manual)' 0 'Adjustment not Applied' /
   TOTDAYS   0 'None' 90 '990 mo or More' 91 'Time Served'
             92 'Less Than 1 Day Imprisonment' 96 'Life Imprisonment Ordered'
             97 'Prison Ordered But Term Not Specified' 98 'Death Sentence' /
   TYPEMONY  1 'No Fine/Cost of Supervision, Nor Restitu'
             2 'Restitution Ordered, No Fine/Cost of Sup'
             3 'Fine/Cost of Supervision, No Restitution'
             4 'Both Fine/Cost of Supervison and Restitu' /
   TYPEOTHS  0 'None' 1 'Suspended Prison Term' 2 'Pay Cost of Prosecution'
             3 'Denial of Federal Benefits' 77 'Other' /
   UNIT1     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Marijuana Cigarette' 13 'Marijuana Plant' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   UNIT2     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Marijuana Cigarette' 13 'Marijuana Plant' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   UNIT3     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Marijuana Cigarette' 13 'Marijuana Plant' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   UNIT4     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Marijuana Cigarette' 13 'Marijuana Plant' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   UNIT5     1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Marijuana Cigarette' 13 'Marijuana Plant' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   VIOL1PTS  0 'No Points Applied' 4 '4 Pts Added (Not In Manuals)'
             5 '5 Pts Added (Not In Manuals)' /
   WEAPON    0 'No SOC Weap Enhan Nor 18.924(c) Charge P'
             1 'SOC Weapon Enhancement or 18.924(c) Char' /
   WEAPSOC   0 'No SOC Weapon Enhancement' 1 'SOC Weapon Enhancement' /
   YEARS     1 '<21' 2 '21 through 25' 3 '26 through 30' 4 '31 through 35'
             5 '36 through 40' 6 '41 through 50' 7 '>50' /
   DRUGMIN   996 'Life' 997 'Problem Case' 999 'Undocumented Value'
             9996 'Undocumented Value' /
   GLMIN     9996 'Life Imprisonment' /
   GLMAX     9996 'Life Imprisonment' /
   GUNMIN1   9996 'Life' /
   GUNMIN2   9996 'Life' /
   STATMAX   9996 'Life' 9997 'Death' /
   STATMIN   9996 'Life' 9997 'Death' /
   TOTPRISN  0 'No Prison or < 1 Month Ordered'
             9992 'Less Than 1 Day Imprisonment'
             9996 'Life Imprisonment Ordered'
             9997 'Prison Ordered But No Term Specified'
             9998 'Death Sentence' /
   XMAXSOR   9996 'Life' /
   XMINSOR   9996 'Life' /
   POOFFICE  'Z' 'Missing' /
   TIMSERVD  997 'Time Served, Amt Unknown' /
   TIMSERVM  997 'Time Served, Amt Unknown' /
   SPECASSM  0 'No Special Assessment Ordered' /
   ABERCASE  '0' 'Not abberrant' '1' 'Has abberrations' /
   CUNIT1    1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             12 'Undocumented Value' 77 'Other'
             97 'Unit Range (e.g. 500G-2KG)' /
   CUNIT2    1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' 97 'Unit Range (e.g. 500G-2KG)' /
   CUNIT3    1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' 97 'Unit Range (e.g. 500G-2KG)' /
   CUNIT4    1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' 97 'Unit Range (e.g. 500G-2KG)' /
   CUNIT5    1 'Gram' 2 'Kilogram' 3 'Pound' 4 'Ounce' 5 'Plant' 6 'Dose'
             7 'Gallon' 8 'Quart' 9 'Liter' 10 'Milligram' 11 'Grain'
             77 'Other' 97 'Unit Range (e.g. 500G-2KG)' /
   REASON4   0 'No Reason Given' 998 'Inapplicable' /
   REASON5   0 'No Reason Given' 998 'Inapplicable' /
   REASON6   0 'No Reason Given' 998 'Inapplicable' /
   ABUSHI    0 'Adjustment Not Applied' 1 'Increase (Not in USSG Manual)'
             2 'Abuse Applied' 3 'Increase (Not in USSG Manual)' /
   ABUSRHI   0 'Adjustment Not Applied' 1 'Increase (Not in USSG Manual)'
             2 'Abuse Applied' 3 'Increase (Not in USSG Manual)' /
   ADJR_BHI  0 'No Adjustment Applied' /
   ADJR_CHI  0 'No Adjustment Applied' /
   ADJR_DHI  0 'No Adjustment Applied' /
   ADJR_EHI  0 'No Adjustment Applied' /
   ADJR_FHI  0 'No Adjustment Applied' /
   ADJR_GHI  0 'No Adjustment Applied' /
   ADJR_HHI  0 'No Adjustment Applied' /
   ADJR_IHI  0 'No Adjustment Applied' /
   ADJR_JHI  0 'No Adjustment Applied' /
   ADJR_KHI  0 'No Adjustment Applied' /
   ADJR_LHI  0 'No Adjustment Applied' /
   ADJR_MHI  0 'No Adjustment Applied' /
   ADJR_NHI  0 'No Adjustment Applied' /
   ADJR_OHI  0 'No Adjustment Applied' /
   ADJR_PHI  0 'No Adjustment Applied' /
   ADJ_BHI   0 'No Adjustment Applied' /
   ADJ_CHI   0 'No Adjustment Applied' /
   ADJ_DHI   0 'No Adjustment Applied' /
   ADJ_EHI   0 'No Adjustment Applied' /
   ADJ_FHI   0 'No Adjustment Applied' /
   ADJ_GHI   0 'No Adjustment Applied' /
   ADJ_HHI   0 'No Adjustment Applied' /
   ADJ_IHI   0 'No Adjustment Applied' /
   ADJ_JHI   0 'No Adjustment Applied' /
   ADJ_KHI   0 'No Adjustment Applied' /
   ADJ_LHI   0 'No Adjustment Applied' /
   ADJ_MHI   0 'No Adjustment Applied' /
   ADJ_NHI   0 'No Adjustment Applied' /
   ADJ_OHI   0 'No Adjustment Applied' /
   ADJ_PHI   0 'No Adjustment Applied' /
   AGGRLRHI  0 'No Adjustment Applied' 1 'Applied (Not In Guidelines)'
             2 'Adj Applied (Mgr, Organizer, Super Of 5+'
             3 'Adj Applied (Mgr Or Supervisor Of 5+ Par'
             4 'Adj Appl (Leader Or Organizer Of 5+ Part' /
   AGGROLHI  0 'No Adjustment Applied' 1 'Applied-Not In Gdlins)'
             2 'Applied-Mgr/Org/Sup/Ldr' 3 'Applied-Mgr/Sup of 5+'
             4 'Applied-Ldr/Org of 5+' /
   FLGHTRHI  0 'No Adjustment' 2 'Adjustment Applied' /
   FLIGHTHI  0 'No Adjustment' 2 'Adjustment Applied' /
   MITRLRHI  -6 'Adjustment (Not In USSG Manual)' -4 'Minimal Participation'
             -3 'Between Minor and Minimal Partic' -2 'Minor Participation'
             -1 'Adjustment (Not In USSG Manual)' 0 'No Adjustment' /
   MITROLHI  -6 'Adjustment (Not In USSG Manual)' -4 'Minimal Participation'
             -3 'Btwn Minr and Mnml Partic' -2 'Minor Participation'
             -1 'Adjustment (Not In USSG Manual)' 0 'No adjustment' /
   OBSTRCHI  0 'No Adjustment' 1 'Adjustment (Not In Guidelines)'
             2 'Adjustment Applied' /
   OBSTRRHI  0 'No Adjustment' 1 'Adjustment -Not in Gdlns)'
             2 'Adjustment Applied' /
   OFFVCRHI  0 'No Adjustment' 2 'Adjustment Applied (Not In Guidelines)'
             3 'Adjust Applied' /
   OFFVCTHI  0 'No Adjustment' 2 'Adjustment Applied' 3 'Adjustment Applied'
             /
   RLADJRHI  0 'No Role Adjustment(s) Given' 1 'Yes Role Adjustment(s) Given'
             /
   ROLADJHI  0 'No Role Adjustment(s) Given' 1 'Role Adjustment(s) Given' /
   RSTRVCHI  0 'No Adjustment' 2 'Adjustment Applied' /
   RSTRVRHI  0 'No Adjustment' 2 'Adjustment Applied' /
   TERORHI   0 'No Adjustment Applied' /
   TERORRHI  0 'No Adjustment Applied' /
   USKIDHI   0 'No Adjustment Applied' 2 'Adjustment Applied' /
   USKIDRHI  0 'No Adjustment Aplied' 2 'Adjustment Applied' /
   VCADJRHI  0 'No Adjustment Applied' 1 'Adjustment applied' /
   VCTADJHI  0 'No Adjustment Applied' 1 'Adjustment applied' /
   VULVCRHI  0 'No Adjustment' 2 'Adjustment For Vulnerable Victim'
             3 'Adjust For Hate Crime'
             4 'Adjust For Multiple Vulnerable Victims'
             5 'Adjust For Both Hate Crime And Vulnerabl' /
   VULVCTHI  0 'No Adjustment' 2 'Adjustment For Vulnerable Victim'
             3 'Adjustment For Hate Crime'
             4 'Adjust For Multiple Vulnerable Victims'
             5 'Adjustment For Both Hate Crime and Vulne' /
   LOSSHI    9999999997 'Range of Amounts' /
   LOSSRHI   9999999997 'Range of amounts' /
   CRPTS     0 'No Criminal History Points Applied'
             1 'Yes, Criminal History Points' /
   MWGT1     .00 'No drug weights coded/unit(s) were inapp' /
   MWGT2     .00 'No drug weights coded/unit(s) were inapp' /
   MWGT3     .00 'No drug weights coded/unit(s) were inapp' /
   MWGT4     .00 'No drug weights coded/unit(s) were inapp' /
   MWGT5     .00 'No drug weights coded/unit(s) were inapp' /
   DRGAM1    7777777.78 'Ambiguous Amount' 10000000.00 'Range' /
   DRGAM2    7777777.78 'Ambiguous Amount' 10000000.00 'Range' /
   DRGAM3    7777777.78 'Ambiguous Amount' 10000000.00 'Range' /
   DRGAM4    7777777.78 'Ambiguous Amount' 10000000.00 'Range' /
   DRGAM5    7777777.78 'Ambiguous Amount' 10000000.00 'Range' /
   MWEIGHT   .00 'No drug weights coded/unit(s) were inapp' /
   CH5G13YN  0 'No' 1 'Yes' /
   DEPART_S  0 'Substantial Assistance' 1 'Government Sponsored'
             2 'Other Downward Departures' 8 'Undocumented Value' /
   DEPART_D  0 'Substantial Assistance' 1 'Government Sponsored'
             2 'Other Downward Departures' /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
