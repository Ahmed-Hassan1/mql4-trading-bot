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
   
   handle=FileOpen("usd.csv",FILE_CSV|FILE_READ,',');
   
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
   
   int usdjpy_up=GlobalVariableGet("usdjpy_up");
   int usdjpy_down=GlobalVariableGet("usdjpy_down");
   
   int audusd_up=GlobalVariableGet("audusd_up");
   int audusd_down=GlobalVariableGet("audusd_down");
   
   int nzdusd_up=GlobalVariableGet("nzdusd_up");
   int nzdusd_down=GlobalVariableGet("nzdusd_down");
   
   int usdcad_up=GlobalVariableGet("usdcad_up");
   int usdcad_down=GlobalVariableGet("usdcad_down");
   
   int usdchf_up=GlobalVariableGet("usdchf_up");
   int usdchf_down=GlobalVariableGet("usdchf_down");
   
   int gbpusd_up=GlobalVariableGet("gbpusd_up");
   int gbpusd_down=GlobalVariableGet("gbpusd_down");
   
   
   /*
   int eurusdopen=0;
   int usdjpyopen=0;
   int audusdopen=0;
   int nzdusdopen=0;
   int usdcadopen=0;
   int usdchfopen=0;
   int gbpusdopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==8){
      if(OrderSymbol()=="EURUSD"){ eurusdopen=1;}
     
      
      if(OrderSymbol()=="USDJPY"){ usdjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDUSD"){ audusdopen=1;}
      
      
      if(OrderSymbol()=="NZDUSD"){ nzdusdopen=1;}
      
      
      if(OrderSymbol()=="USDCAD"){ usdcadopen=1;}
      
      
      if(OrderSymbol()=="USDCHF"){ usdchfopen=1;}
      
      
      if(OrderSymbol()=="GBPUSD"){ gbpusdopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("usd_open_up");
    down=GlobalVariableGet("usd_open_down");
      
    int upcounter=0;  
    
    int Ueurusd=0;
    int Uusdjpy=0;
    int Uaudusd=0;
    int Unzdusd=0;
    int Uusdcad=0;
    int Uusdchf=0;
    int Ugbpusd=0;
    
    if(eurusd_up==0&&eurusd_down==1){upcounter++; Ueurusd=1;}  
    if(usdjpy_up==1&&usdjpy_down==0){upcounter++; Uusdjpy=1;}
    if(audusd_up==0&&audusd_down==1){upcounter++; Uaudusd=1;}
    if(nzdusd_up==0&&nzdusd_down==1){upcounter++; Unzdusd=1;}
    if(usdcad_up==1&&usdcad_down==0){upcounter++; Uusdcad=1;}
    if(usdchf_up==1&&usdchf_down==0){upcounter++; Uusdchf=1;}
    if(gbpusd_up==0&&gbpusd_down==1){upcounter++; Ugbpusd=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
         
            
            while(!OrderSend("EURUSD",OP_SELLSTOP,lot,MarketInfo("EURUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("USDJPY",OP_BUYSTOP,lot,MarketInfo("USDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDUSD",OP_SELLSTOP,lot,MarketInfo("AUDUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDUSD",OP_SELLSTOP,lot,MarketInfo("NZDUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("USDCAD",OP_BUYSTOP,lot,MarketInfo("USDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("USDCHF",OP_BUYSTOP,lot,MarketInfo("USDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPUSD",OP_SELLSTOP,lot,MarketInfo("GBPUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Deurusd=0;
    int Dusdjpy=0;
    int Daudusd=0;
    int Dnzdusd=0;
    int Dusdcad=0;
    int Dusdchf=0;
    int Dgbpusd=0;
   
    if(eurusd_up==1&&eurusd_down==0){downcounter++; Deurusd=1;}  
    if(usdjpy_up==0&&usdjpy_down==1){downcounter++; Dusdjpy=1;}
    if(audusd_up==1&&audusd_down==0){downcounter++; Daudusd=1;}
    if(nzdusd_up==1&&nzdusd_down==0){downcounter++; Dnzdusd=1;}
    if(usdcad_up==0&&usdcad_down==1){downcounter++; Dusdcad=1;}
    if(usdchf_up==0&&usdchf_down==1){downcounter++; Dusdchf=1;}
    if(gbpusd_up==1&&gbpusd_down==0){downcounter++; Dgbpusd=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
           
            while(!OrderSend("EURUSD",OP_BUYSTOP,lot,MarketInfo("EURUSD",MODE_BID)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("USDJPY",OP_SELLSTOP,lot,MarketInfo("USDJPY",MODE_BID)-(stop/100),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDUSD",OP_BUYSTOP,lot,MarketInfo("AUDUSD",MODE_BID)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDUSD",OP_BUYSTOP,lot,MarketInfo("NZDUSD",MODE_BID)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("USDCAD",OP_SELLSTOP,lot,MarketInfo("USDCAD",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("USDCHF",OP_SELLSTOP,lot,MarketInfo("USDCHF",MODE_BID)-(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPUSD",OP_BUYSTOP,lot,MarketInfo("GBPUSD",MODE_BID)+(stop/10000),100,NULL,NULL,NULL,8,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("usd_open_up",up);
      GlobalVariableSet("usd_open_down",down);
      
      GlobalVariableSet("z_USDUP",upcounter);
      GlobalVariableSet("z_USDDOWN",downcounter);
      
      
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
  
   int handle,records;
   
   handle=FileOpen("usd.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"usd_open_down",GlobalVariableGet("usd_open_down"));
   records=FileWrite(handle,"usd_open_up",GlobalVariableGet("usd_open_up"));
   
   FileClose(handle);
  
  
  }
//+------------------------------------------------------------------+
