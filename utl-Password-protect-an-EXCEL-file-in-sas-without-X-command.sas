Password protect an EXCEL file in sas without X command R                                                                         
                                                                                                                                  
github                                                                                                                            
https://tinyurl.com/yxhsknrl                                                                                                      
https://github.com/rogerjdeangelis/utl-Password-protect-an-EXCEL-file-in-sas-without-X-command                                    
                                                                                                                                  
SAS Forum                                                                                                                         
https://tinyurl.com/y3hk2j92                                                                                                      
https://communities.sas.com/t5/SAS-Programming/Password-protect-an-EXCEL-file-in-sas-without-X-command/m-p/691185                 
                                                                                                                                  
/*                   _                                                                                                            
(_)_ __  _ __  _   _| |_                                                                                                          
| | `_ \| `_ \| | | | __|                                                                                                         
| | | | | |_) | |_| | |_                                                                                                          
|_|_| |_| .__/ \__,_|\__|                                                                                                         
        |_|                                                                                                                       
*/                                                                                                                                
                                                                                                                                  
options validvarname=upcase;                                                                                                      
libname sd1 "d:/sd1";                                                                                                             
data sd1.have;                                                                                                                    
  set sashelp.class;                                                                                                              
run;quit;                                                                                                                         
                                                                                                                                  
                                                                                                                                  
Up to 40 obs from SD1.HAVE total obs=19                                                                                           
                                                                                                                                  
Obs    NAME       SEX    AGE    HEIGHT    WEIGHT                                                                                  
                                                                                                                                  
  1    Joyce       F      11     51.3       50.5                                                                                  
  2    Louise      F      12     56.3       77.0                                                                                  
  3    Alice       F      13     56.5       84.0                                                                                  
  4    James       M      12     57.3       83.0                                                                                  
...                                                                                                                               
                                                                                                                                  
/*           _               _                                                                                                    
  ___  _   _| |_ _ __  _   _| |_                                                                                                  
 / _ \| | | | __| `_ \| | | | __|                                                                                                 
| (_) | |_| | |_| |_) | |_| | |_                                                                                                  
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                 
                |_|                                                                                                               
*/                                                                                                                                
                                                                                                                                  
 d:/xls/classpass.xlsx    MicroSoft Excel                                                                                         
   _____________________ _____________ _____________________________                                                              
  |_____________________|_______fx___||_____________________________|                                                             
                                                                                                                                  
                                                                                                                                  
         ________________________________                                                                                         
        |                                |                                                                                        
        |   Password ?                   |                                                                                        
        |             ________________   |                                                                                        
        |   Password |________________|  |                                                                                        
        |     _____          ______      |                                                                                        
        |    |__OK_|        |CANCEL|     |                                                                                        
        |                                |                                                                                        
        |________________________________|                                                                                        
                                                                                                                                  
                                                                                                                                  
                                                                                                                                  
  +----------------------------------------------------------------+                                                              
  |     A      |    B       |     C      |    D       |    E       |                                                              
  +----------------------------------------------------------------+                                                              
1 |  NAME      |   SEX      |    AGE     |  HEIGHT    |  WEIGHT    |                                                              
  +------------+------------+------------+------------+------------+                                                              
2 | ALFRED     |    M       |    14      |    69      |  112.5     |                                                              
  +------------+------------+------------+------------+------------+                                                              
   ...                                                                                                                            
  +------------+------------+------------+------------+------------+                                                              
N | WILLIAM    |    M       |    15      |   66.5     |  112       |                                                              
  +------------+------------+------------+------------+------------+                                                              
                                                                                                                                  
[CLASS]                                                                                                                           
                                                                                                                                  
/*                                                                                                                                
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                               
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                               
| .__/|_|  \___/ \___\___||___/___/                                                                                               
|_|                                                                                                                               
*/                                                                                                                                
                                                                                                                                  
%utl_submit_r64('                                                                                                                 
library(haven);                                                                                                                   
library(xlsx);                                                                                                                    
have<-read_sas("d:/sd1/have.sas7bdat");                                                                                           
write.xlsx(have, "d:/xls/classpass.xlsx", sheetName="Class", col.names=TRUE,                                                      
 row.names=TRUE, append=FALSE, showNA=TRUE, password="12345");                                                                    
');                                                                                                                               
                                                                                                                                  
                                                                                                                                  
                                                                                                                                  
