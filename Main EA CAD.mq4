//+------------------------------------------------------------------+
//|                                                  Main EA CAD.mq4 |
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
   
   handle=FileOpen("cad.csv",FILE_CSV|FILE_READ,',');
   
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
   int usdcad_up=GlobalVariableGet("usdcad_up");
   int usdcad_down=GlobalVariableGet("usdcad_down");
   
   int cadjpy_up=GlobalVariableGet("cadjpy_up");
   int cadjpy_down=GlobalVariableGet("cadjpy_down");
   
   int audcad_up=GlobalVariableGet("audcad_up");
   int audcad_down=GlobalVariableGet("audcad_down");
   
   int nzdcad_up=GlobalVariableGet("nzdcad_up");
   int nzdcad_down=GlobalVariableGet("nzdcad_down");
   
   int eurcad_up=GlobalVariableGet("eurcad_up");
   int eurcad_down=GlobalVariableGet("eurcad_down");
   
   int cadchf_up=GlobalVariableGet("cadchf_up");
   int cadchf_down=GlobalVariableGet("cadchf_down");
   
   int gbpcad_up=GlobalVariableGet("gbpcad_up");
   int gbpcad_down=GlobalVariableGet("gbpcad_down");
   
   
   /*
   int usdcadopen=0;
   int cadjpyopen=0;
   int audcadopen=0;
   int nzdcadopen=0;
   int eurcadopen=0;
   int cadchfopen=0;
   int gbpcadopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
     
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
     if(OrderMagicNumber()==6){ 
      if(OrderSymbol()=="USDCAD"){ usdcadopen=1;}
     
      
      if(OrderSymbol()=="CADJPY"){ cadjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDCAD"){ audcadopen=1;}
      
      
      if(OrderSymbol()=="NZDCAD"){ nzdcadopen=1;}
      
      
      if(OrderSymbol()=="EURCAD"){ eurcadopen=1;}
      
      
      if(OrderSymbol()=="CADCHF"){ cadchfopen=1;}
      
      
      if(OrderSymbol()=="GBPCAD"){ gbpcadopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("cad_open_up");
    down=GlobalVariableGet("cad_open_down");
      
    int upcounter=0;  
    
    int Uusdcad=0;
    int Ucadjpy=0;
    int Uaudcad=0;
    int Unzdcad=0;
    int Ueurcad=0;
    int Ucadchf=0;
    int Ugbpcad=0;
    
    if(usdcad_up==0&&usdcad_down==1){upcounter++; Uusdcad=1;}  
    if(cadjpy_up==1&&cadjpy_down==0){upcounter++; Ucadjpy=1;}
    if(audcad_up==0&&audcad_down==1){upcounter++; Uaudcad=1;}
    if(nzdcad_up==0&&nzdcad_down==1){upcounter++; Unzdcad=1;}
    if(eurcad_up==0&&eurcad_down==1){upcounter++; Ueurcad=1;}
    if(cadchf_up==1&&cadchf_down==0){upcounter++; Ucadchf=1;}
    if(gbpcad_up==0&&gbpcad_down==1){upcounter++; Ugbpcad=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
         
            
            while(!OrderSend("USDCAD",OP_SELLSTOP,lot,MarketInfo("USDCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADJPY",OP_BUYSTOP,lot,MarketInfo("CADJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCAD",OP_SELLSTOP,lot,MarketInfo("AUDCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDCAD",OP_SELLSTOP,lot,MarketInfo("NZDCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURCAD",OP_SELLSTOP,lot,MarketInfo("EURCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADCHF",OP_BUYSTOP,lot,MarketInfo("CADCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPCAD",OP_SELLSTOP,lot,MarketInfo("GBPCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Dusdcad=0;
    int Dcadjpy=0;
    int Daudcad=0;
    int Dnzdcad=0;
    int Deurcad=0;
    int Dcadchf=0;
    int Dgbpcad=0;
    
    if(usdcad_up==1&&usdcad_down==0){downcounter++; Dusdcad=1;}  
    if(cadjpy_up==0&&cadjpy_down==1){downcounter++; Dcadjpy=1;}
    if(audcad_up==1&&audcad_down==0){downcounter++; Daudcad=1;}
    if(nzdcad_up==1&&nzdcad_down==0){downcounter++; Dnzdcad=1;}
    if(eurcad_up==1&&eurcad_down==0){downcounter++; Deurcad=1;}
    if(cadchf_up==0&&cadchf_down==1){downcounter++; Dcadchf=1;}
    if(gbpcad_up==1&&gbpcad_down==0){downcounter++; Dgbpcad=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
         
            
            while(!OrderSend("USDCAD",OP_BUYSTOP,lot,MarketInfo("USDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADJPY",OP_SELLSTOP,lot,MarketInfo("CADJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCAD",OP_BUYSTOP,lot,MarketInfo("AUDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDCAD",OP_BUYSTOP,lot,MarketInfo("NZDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURCAD",OP_BUYSTOP,lot,MarketInfo("EURCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("CADCHF",OP_SELLSTOP,lot,MarketInfo("CADCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPCAD",OP_BUYSTOP,lot,MarketInfo("GBPCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,6,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("cad_open_up",up);
      GlobalVariableSet("cad_open_down",down);
      
      GlobalVariableSet("z_CADUP",upcounter);
      GlobalVariableSet("z_CADDOWN",downcounter);
   
   
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
  
  
   int handle,records;
   
   handle=FileOpen("cad.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"cad_open_down",GlobalVariableGet("cad_open_down"));
   records=FileWrite(handle,"cad_open_up",GlobalVariableGet("cad_open_up"));
   
   FileClose(handle);
  
  
  }
//+------------------------------------------------------------------+
