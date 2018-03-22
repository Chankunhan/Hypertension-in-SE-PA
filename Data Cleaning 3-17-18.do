******** Data Cleaning  - SPHHS

* whether foreign-born
recode ORIGIN (1=0)(2/1000=1),gen(fborn)
lab var fborn "foreign-born or not"
lab def fborn 1"foreign-born" 0"US-born"
lab val fborn fborn
codebook fborn

* race/ethnicity
* RESPRACE RSPRACE2 RACEA2
recode RACEA2 (5/7=5),gen(race4)
lab var race4 "race in 4 categories"
lab def race4 1"NHW" 2"NHB" 3"Hispanic" 4"Asian" 5"other"
lab val race4 race4
codebook race4
*            tabulation:  Freq.   Numeric  Label
*                        20,269         1  NHW
*                         6,442         2  NHB
*                         1,488         3  Hispanic
*                           553         4  Asian
*                           720         5  other
*                           600         .  

codebook race4 if fborn==1
*            tabulation:  Freq.   Numeric  Label
*                           796         1  NHW
*                           391         2  NHB
*                           688         3  Hispanic
*                           421         4  Asian
*                            62         5  other
*                            51         .  



