//+------------------------------------------------------------------+
//|                                                      Main EA.mq4 |
//|                                                            exawy |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "exawy"
#property link      ""
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
input double stop=20;
input double lot=0.03;
int OnInit()
  {
//---
   string x;
   int handle,flag;
   
   handle=FileOpen("eur.csv",FILE_CSV|FILE_READ,',');
   
   while(FileIsEnding(handle)==false)
  {
      x=FileReadString(handle);  
      flag=FileReadNumber(handle);
      
      GlobalVariableSet(x,flag);  
   
   }
   
   FileClose(handle);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   /*
      EUR=1
      GBP=2
      AUD=3
      NZD=4
      JPY=5
      CAD=6
      CHF=7
   
   */
   int eurusd_up=GlobalVariableGet("eurusd_up");
   int eurusd_down=GlobalVariableGet("eurusd_down");
   
   int eurjpy_up=GlobalVariableGet("eurjpy_up");
   int eurjpy_down=GlobalVariableGet("eurjpy_down");
   
   int euraud_up=GlobalVariableGet("euraud_up");
   int euraud_down=GlobalVariableGet("euraud_down");
   
   int eurnzd_up=GlobalVariableGet("eurnzd_up");
   int eurnzd_down=GlobalVariableGet("eurnzd_down");
   
   int eurcad_up=GlobalVariableGet("eurcad_up");
   int eurcad_down=GlobalVariableGet("eurcad_down");
   
   int eurchf_up=GlobalVariableGet("eurchf_up");
   int eurchf_down=GlobalVariableGet("eurchf_down");
   
   int eurgbp_up=GlobalVariableGet("eurgbp_up");
   int eurgbp_down=GlobalVariableGet("eurgbp_down");
   
   
   /*
   int eurusdopen=0;
   int eurjpyopen=0;
   int euraudopen=0;
   int eurnzdopen=0;
   int eurcadopen=0;
   int eurchfopen=0;
   int eurgbpopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==1){
      if(OrderSymbol()=="EURUSD"){ eurusdopen=1;}
     
      
      if(OrderSymbol()=="EURJPY"){ eurjpyopen=1;}
      
      
      if(OrderSymbol()=="EURAUD"){ euraudopen=1;}
      
      
      if(OrderSymbol()=="EURNZD"){ eurnzdopen=1;}
      
      
      if(OrderSymbol()=="EURCAD"){ eurcadopen=1;}
      
      
      if(OrderSymbol()=="EURCHF"){ eurchfopen=1;}
      
      
      if(OrderSymbol()=="EURGBP"){ eurgbpopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("eur_open_up");
    down=GlobalVariableGet("eur_open_down");
      
    int upcounter=0;  
    
    int Ueurusd=0;
    int Ueurjpy=0;
    int Ueuraud=0;
    int Ueurnzd=0;
    int Ueurcad=0;
    int Ueurchf=0;
    int Ueurgbp=0;
    
    if(eurusd_up==1&&eurusd_down==0){upcounter++; Ueurusd=1;}  
    if(eurjpy_up==1&&eurjpy_down==0){upcounter++; Ueurjpy=1;}
    if(euraud_up==1&&euraud_down==0){upcounter++; Ueuraud=1;}
    if(eurnzd_up==1&&eurnzd_down==0){upcounter++; Ueurnzd=1;}
    if(eurcad_up==1&&eurcad_down==0){upcounter++; Ueurcad=1;}
    if(eurchf_up==1&&eurchf_down==0){upcounter++; Ueurchf=1;}
    if(eurgbp_up==1&&eurgbp_down==0){upcounter++; Ueurgbp=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
         
            
            while(!OrderSend("EURUSD",OP_BUYSTOP,lot,MarketInfo("EURUSD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURJPY",OP_BUYSTOP,lot,MarketInfo("EURJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURAUD",OP_BUYSTOP,lot,MarketInfo("EURAUD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURNZD",OP_BUYSTOP,lot,MarketInfo("EURNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURCAD",OP_BUYSTOP,lot,MarketInfo("EURCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURCHF",OP_BUYSTOP,lot,MarketInfo("EURCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURGBP",OP_BUYSTOP,lot,MarketInfo("EURGBP",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Deurusd=0;
    int Deurjpy=0;
    int Deuraud=0;
    int Deurnzd=0;
    int Deurcad=0;
    int Deurchf=0;
    int Deurgbp=0;
   
    if(eurusd_up==0&&eurusd_down==1){downcounter++; Deurusd=1;}  
    if(eurjpy_up==0&&eurjpy_down==1){downcounter++; Deurjpy=1;}
    if(euraud_up==0&&euraud_down==1){downcounter++; Deuraud=1;}
    if(eurnzd_up==0&&eurnzd_down==1){downcounter++; Deurnzd=1;}
    if(eurcad_up==0&&eurcad_down==1){downcounter++; Deurcad=1;}
    if(eurchf_up==0&&eurchf_down==1){downcounter++; Deurchf=1;}
    if(eurgbp_up==0&&eurgbp_down==1){downcounter++; Deurgbp=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
           
            while(!OrderSend("EURUSD",OP_SELLSTOP,lot,MarketInfo("EURUSD",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURJPY",OP_SELLSTOP,lot,MarketInfo("EURJPY",MODE_BID)-(stop/100),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURAUD",OP_SELLSTOP,lot,MarketInfo("EURAUD",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURNZD",OP_SELLSTOP,lot,MarketInfo("EURNZD",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURCAD",OP_SELLSTOP,lot,MarketInfo("EURCAD",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURCHF",OP_SELLSTOP,lot,MarketInfo("EURCHF",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURGBP",OP_SELLSTOP,lot,MarketInfo("EURGBP",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,1,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("eur_open_up",up);
      GlobalVariableSet("eur_open_down",down);
      
       GlobalVariableSet("z_EURUP",upcounter);
      GlobalVariableSet("z_EURDOWN",downcounter);
      
      
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
   int handle,records;
   
   handle=FileOpen("eur.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"eur_open_down",GlobalVariableGet("eur_open_down"));
   records=FileWrite(handle,"eur_open_up",GlobalVariableGet("eur_open_up"));
   
   FileClose(handle);
  }
//+------------------------------------------------------------------+
