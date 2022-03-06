//+------------------------------------------------------------------+
//|                                                  Main EA JPY.mq4 |
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
   
   handle=FileOpen("jpy.csv",FILE_CSV|FILE_READ,',');
   
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
   int usdjpy_up=GlobalVariableGet("usdjpy_up");
   int usdjpy_down=GlobalVariableGet("usdjpy_down");
   
   int eurjpy_up=GlobalVariableGet("eurjpy_up");
   int eurjpy_down=GlobalVariableGet("eurjpy_down");
   
   int audjpy_up=GlobalVariableGet("audjpy_up");
   int audjpy_down=GlobalVariableGet("audjpy_down");
   
   int nzdjpy_up=GlobalVariableGet("nzdjpy_up");
   int nzdjpy_down=GlobalVariableGet("nzdjpy_down");
   
   int cadjpy_up=GlobalVariableGet("cadjpy_up");
   int cadjpy_down=GlobalVariableGet("cadjpy_down");
   
   int chfjpy_up=GlobalVariableGet("chfjpy_up");
   int chfjpy_down=GlobalVariableGet("chfjpy_down");
   
   int gbpjpy_up=GlobalVariableGet("gbpjpy_up");
   int gbpjpy_down=GlobalVariableGet("gbpjpy_down");
   
   
   /*
   int usdjpyopen=0;
   int eurjpyopen=0;
   int audjpyopen=0;
   int nzdjpyopen=0;
   int cadjpyopen=0;
   int chfjpyopen=0;
   int gbpjpyopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==5){
      if(OrderSymbol()=="USDJPY"){ usdjpyopen=1;}
     
      
      if(OrderSymbol()=="EURJPY"){ eurjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDJPY"){ audjpyopen=1;}
      
      
      if(OrderSymbol()=="NZDJPY"){ nzdjpyopen=1;}
      
      
      if(OrderSymbol()=="CADJPY"){ cadjpyopen=1;}
      
      
      if(OrderSymbol()=="CHFJPY"){ chfjpyopen=1;}
      
      
      if(OrderSymbol()=="GBPJPY"){ gbpjpyopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("jpy_open_up");
    down=GlobalVariableGet("jpy_open_down");
      
    int upcounter=0;  
    
    int Uusdjpy=0;
    int Ueurjpy=0;
    int Uaudjpy=0;
    int Unzdjpy=0;
    int Ucadjpy=0;
    int Uchfjpy=0;
    int Ugbpjpy=0;
    
    if(usdjpy_up==1&&usdjpy_down==0){upcounter++; Uusdjpy=1;}  
    if(eurjpy_up==1&&eurjpy_down==0){upcounter++; Ueurjpy=1;}
    if(audjpy_up==1&&audjpy_down==0){upcounter++; Uaudjpy=1;}
    if(nzdjpy_up==1&&nzdjpy_down==0){upcounter++; Unzdjpy=1;}
    if(cadjpy_up==1&&cadjpy_down==0){upcounter++; Ucadjpy=1;}
    if(chfjpy_up==1&&chfjpy_down==0){upcounter++; Uchfjpy=1;}
    if(gbpjpy_up==1&&gbpjpy_down==0){upcounter++; Ugbpjpy=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
            
            while(!OrderSend("USDJPY",OP_BUYSTOP,lot,MarketInfo("USDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURJPY",OP_BUYSTOP,lot,MarketInfo("EURJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDJPY",OP_BUYSTOP,lot,MarketInfo("AUDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDJPY",OP_BUYSTOP,lot,MarketInfo("NZDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADJPY",OP_BUYSTOP,lot,MarketInfo("CADJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CHFJPY",OP_BUYSTOP,lot,MarketInfo("CHFJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPJPY",OP_BUYSTOP,lot,MarketInfo("GBPJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Dusdjpy=0;
    int Deurjpy=0;
    int Daudjpy=0;
    int Dnzdjpy=0;
    int Dcadjpy=0;
    int Dchfjpy=0;
    int Dgbpjpy=0;
    
    if(usdjpy_up==0&&usdjpy_down==1){downcounter++; Dusdjpy=1;}  
    if(eurjpy_up==0&&eurjpy_down==1){downcounter++; Deurjpy=1;}
    if(audjpy_up==0&&audjpy_down==1){downcounter++; Daudjpy=1;}
    if(nzdjpy_up==0&&nzdjpy_down==1){downcounter++; Dnzdjpy=1;}
    if(cadjpy_up==0&&cadjpy_down==1){downcounter++; Dcadjpy=1;}
    if(chfjpy_up==0&&chfjpy_down==1){downcounter++; Dchfjpy=1;}
    if(gbpjpy_up==0&&gbpjpy_down==1){downcounter++; Dgbpjpy=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
            
            while(!OrderSend("USDJPY",OP_SELLSTOP,lot,MarketInfo("USDJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURJPY",OP_SELLSTOP,lot,MarketInfo("EURJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("AUDJPY",OP_SELLSTOP,lot,MarketInfo("AUDJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDJPY",OP_SELLSTOP,lot,MarketInfo("NZDJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
         
            while(!OrderSend("CADJPY",OP_SELLSTOP,lot,MarketInfo("CADJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
         
            while(!OrderSend("CHFJPY",OP_SELLSTOP,lot,MarketInfo("CHFJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPJPY",OP_SELLSTOP,lot,MarketInfo("GBPJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,5,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("jpy_open_up",up);
      GlobalVariableSet("jpy_open_down",down);
      
      GlobalVariableSet("z_JPYUP",upcounter);
      GlobalVariableSet("z_JPYDOWN",downcounter);
      
      
      Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
  
   int handle,records;
   
   handle=FileOpen("jpy.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"jpy_open_down",GlobalVariableGet("jpy_open_down"));
   records=FileWrite(handle,"jpy_open_up",GlobalVariableGet("jpy_open_up"));
   
   FileClose(handle);
  
  }
//+------------------------------------------------------------------+
