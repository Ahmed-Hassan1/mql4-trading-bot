//+------------------------------------------------------------------+
//|                                                  Main EA CHF.mq4 |
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
   
   handle=FileOpen("chf.csv",FILE_CSV|FILE_READ,',');
   
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
   int usdchf_up=GlobalVariableGet("usdchf_up");
   int usdchf_down=GlobalVariableGet("usdchf_down");
   
   int chfjpy_up=GlobalVariableGet("chfjpy_up");
   int chfjpy_down=GlobalVariableGet("chfjpy_down");
   
   int audchf_up=GlobalVariableGet("audchf_up");
   int audchf_down=GlobalVariableGet("audchf_down");
   
   int nzdchf_up=GlobalVariableGet("nzdchf_up");
   int nzdchf_down=GlobalVariableGet("nzdchf_down");
   
   int cadchf_up=GlobalVariableGet("cadchf_up");
   int cadchf_down=GlobalVariableGet("cadchf_down");
   
   int eurchf_up=GlobalVariableGet("eurchf_up");
   int eurchf_down=GlobalVariableGet("eurchf_down");
   
   int gbpchf_up=GlobalVariableGet("gbpchf_up");
   int gbpchf_down=GlobalVariableGet("gbpchf_down");
   
   
   /*
   int usdchfopen=0;
   int chfjpyopen=0;
   int audchfopen=0;
   int nzdchfopen=0;
   int cadchfopen=0;
   int eurchfopen=0;
   int gbpchfopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==7){
      if(OrderSymbol()=="USDCHF"){ usdchfopen=1;}
     
      
      if(OrderSymbol()=="CHFJPY"){ chfjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDCHF"){ audchfopen=1;}
      
      
      if(OrderSymbol()=="NZDCHF"){ nzdchfopen=1;}
      
      
      if(OrderSymbol()=="CADCHF"){ cadchfopen=1;}
      
      
      if(OrderSymbol()=="EURCHF"){ eurchfopen=1;}
      
      
      if(OrderSymbol()=="GBPCHF"){ gbpchfopen=1;}
      }    
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("chf_open_up"); 
    down=GlobalVariableGet("chf_open_down");
     
    int upcounter=0;  
    
    int Uusdchf=0;
    int Uchfjpy=0;
    int Uaudchf=0;
    int Unzdchf=0;
    int Ucadchf=0;
    int Ueurchf=0;
    int Ugbpchf=0;
    
    if(usdchf_up==0&&usdchf_down==1){upcounter++; Uusdchf=1;}  
    if(chfjpy_up==1&&chfjpy_down==0){upcounter++; Uchfjpy=1;}
    if(audchf_up==0&&audchf_down==1){upcounter++; Uaudchf=1;}
    if(nzdchf_up==0&&nzdchf_down==1){upcounter++; Unzdchf=1;}
    if(cadchf_up==0&&cadchf_down==1){upcounter++; Ucadchf=1;}
    if(eurchf_up==0&&eurchf_down==1){upcounter++; Ueurchf=1;}
    if(gbpchf_up==0&&gbpchf_down==1){upcounter++; Ugbpchf=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
         
            
            while(!OrderSend("USDCHF",OP_SELLSTOP,lot,MarketInfo("USDCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CHFJPY",OP_BUYSTOP,lot,MarketInfo("CHFJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCHF",OP_SELLSTOP,lot,MarketInfo("AUDCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCHF",OP_SELLSTOP,lot,MarketInfo("NZDCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADCHF",OP_SELLSTOP,lot,MarketInfo("CADCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURCHF",OP_SELLSTOP,lot,MarketInfo("EURCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPCHF",OP_SELLSTOP,lot,MarketInfo("GBPCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Dusdchf=0;
    int Dchfjpy=0;
    int Daudchf=0;
    int Dnzdchf=0;
    int Dcadchf=0;
    int Deurchf=0;
    int Dgbpchf=0;
    
    if(usdchf_up==1&&usdchf_down==0){downcounter++; Dusdchf=1;}  
    if(chfjpy_up==0&&chfjpy_down==1){downcounter++; Dchfjpy=1;}
    if(audchf_up==1&&audchf_down==0){downcounter++; Daudchf=1;}
    if(nzdchf_up==1&&nzdchf_down==0){downcounter++; Dnzdchf=1;}
    if(cadchf_up==1&&cadchf_down==0){downcounter++; Dcadchf=1;}
    if(eurchf_up==1&&eurchf_down==0){downcounter++; Deurchf=1;}
    if(gbpchf_up==1&&gbpchf_down==0){downcounter++; Dgbpchf=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
         
            
            while(!OrderSend("USDCHF",OP_BUYSTOP,lot,MarketInfo("USDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CHFJPY",OP_SELLSTOP,lot,MarketInfo("CHFJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCHF",OP_BUYSTOP,lot,MarketInfo("AUDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCHF",OP_BUYSTOP,lot,MarketInfo("NZDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADCHF",OP_BUYSTOP,lot,MarketInfo("CADCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURCHF",OP_BUYSTOP,lot,MarketInfo("EURCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPCHF",OP_BUYSTOP,lot,MarketInfo("GBPCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,7,NULL,clrNONE))
            {break;
            }
         
      }
   GlobalVariableSet("chf_open_up",up);
   GlobalVariableSet("chf_open_down",down);
   
   GlobalVariableSet("z_CHFUP",upcounter);
   GlobalVariableSet("z_CHFDOWN",downcounter);
   
   
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
  
   int handle,records;
   
   handle=FileOpen("chf.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"chf_open_down",GlobalVariableGet("chf_open_down"));
   records=FileWrite(handle,"chf_open_up",GlobalVariableGet("chf_open_up"));
   
   FileClose(handle);
  
  
  }
//+------------------------------------------------------------------+
