//+------------------------------------------------------------------+
//|                                                  Main EA GBP.mq4 |
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
   
   handle=FileOpen("gbp.csv",FILE_CSV|FILE_READ,',');
   
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
   int gbpusd_up=GlobalVariableGet("gbpusd_up");
   int gbpusd_down=GlobalVariableGet("gbpusd_down");
   
   int gbpjpy_up=GlobalVariableGet("gbpjpy_up");
   int gbpjpy_down=GlobalVariableGet("gbpjpy_down");
   
   int gbpaud_up=GlobalVariableGet("gbpaud_up");
   int gbpaud_down=GlobalVariableGet("gbpaud_down");
   
   int gbpnzd_up=GlobalVariableGet("gbpnzd_up");
   int gbpnzd_down=GlobalVariableGet("gbpnzd_down");
   
   int gbpcad_up=GlobalVariableGet("gbpcad_up");
   int gbpcad_down=GlobalVariableGet("gbpcad_down");
   
   int gbpchf_up=GlobalVariableGet("gbpchf_up");
   int gbpchf_down=GlobalVariableGet("gbpchf_down");
   
   int eurgbp_up=GlobalVariableGet("eurgbp_up");
   int eurgbp_down=GlobalVariableGet("eurgbp_down");
   
   
   /*
   int gbpusdopen=0;
   int gbpjpyopen=0;
   int gbpaudopen=0;
   int gbpnzdopen=0;
   int gbpcadopen=0;
   int gbpchfopen=0;
   int eurgbpopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==2){
      if(OrderSymbol()=="GBPUSD"){ gbpusdopen=1;}
     
      
      if(OrderSymbol()=="GBPJPY"){ gbpjpyopen=1;}
      
      
      if(OrderSymbol()=="GBPAUD"){ gbpaudopen=1;}
      
      
      if(OrderSymbol()=="GBPNZD"){ gbpnzdopen=1;}
      
      
      if(OrderSymbol()=="GBPCAD"){ gbpcadopen=1;}
      
      
      if(OrderSymbol()=="GBPCHF"){ gbpchfopen=1;}
      
      
      if(OrderSymbol()=="EURGBP"){ eurgbpopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("gbp_open_up");
    down=GlobalVariableGet("gbp_open_down");
      
    int upcounter=0;  
    
    int Ugbpusd=0;
    int Ugbpjpy=0;
    int Ugbpaud=0;
    int Ugbpnzd=0;
    int Ugbpcad=0;
    int Ugbpchf=0;
    int Ueurgbp=0;
    
    if(gbpusd_up==1&&gbpusd_down==0){upcounter++; Ugbpusd=1;}  
    if(gbpjpy_up==1&&gbpjpy_down==0){upcounter++; Ugbpjpy=1;}
    if(gbpaud_up==1&&gbpaud_down==0){upcounter++; Ugbpaud=1;}
    if(gbpnzd_up==1&&gbpnzd_down==0){upcounter++; Ugbpnzd=1;}
    if(gbpcad_up==1&&gbpcad_down==0){upcounter++; Ugbpcad=1;}
    if(gbpchf_up==1&&gbpchf_down==0){upcounter++; Ugbpchf=1;}
    if(eurgbp_up==0&&eurgbp_down==1){upcounter++; Ueurgbp=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
         
            
            while(!OrderSend("GBPUSD",OP_BUYSTOP,lot,MarketInfo("GBPUSD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPJPY",OP_BUYSTOP,lot,MarketInfo("GBPJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPAUD",OP_BUYSTOP,lot,MarketInfo("GBPAUD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPNZD",OP_BUYSTOP,lot,MarketInfo("GBPNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPCAD",OP_BUYSTOP,lot,MarketInfo("GBPCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPCHF",OP_BUYSTOP,lot,MarketInfo("GBPCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURGBP",OP_SELLSTOP,lot,MarketInfo("EURGBP",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Dgbpusd=0;
    int Dgbpjpy=0;
    int Dgbpaud=0;
    int Dgbpnzd=0;
    int Dgbpcad=0;
    int Dgbpchf=0;
    int Deurgbp=0;
    
    if(gbpusd_up==0&&gbpusd_down==1){downcounter++; Dgbpusd=1;}  
    if(gbpjpy_up==0&&gbpjpy_down==1){downcounter++; Dgbpjpy=1;}
    if(gbpaud_up==0&&gbpaud_down==1){downcounter++; Dgbpaud=1;}
    if(gbpnzd_up==0&&gbpnzd_down==1){downcounter++; Dgbpnzd=1;}
    if(gbpcad_up==0&&gbpcad_down==1){downcounter++; Dgbpcad=1;}
    if(gbpchf_up==0&&gbpchf_down==1){downcounter++; Dgbpchf=1;}
    if(eurgbp_up==1&&eurgbp_down==0){downcounter++; Deurgbp=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
            
            while(!OrderSend("GBPUSD",OP_SELLSTOP,lot,MarketInfo("GBPUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPJPY",OP_SELLSTOP,lot,MarketInfo("GBPJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPAUD",OP_SELLSTOP,lot,MarketInfo("GBPAUD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPNZD",OP_SELLSTOP,lot,MarketInfo("GBPNZD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPCAD",OP_SELLSTOP,lot,MarketInfo("GBPCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("GBPCHF",OP_SELLSTOP,lot,MarketInfo("GBPCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("EURGBP",OP_BUYSTOP,lot,MarketInfo("EURGBP",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,2,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("gbp_open_up",up);
      GlobalVariableSet("gbp_open_down",down);
      
      GlobalVariableSet("z_GBPUP",upcounter);
      GlobalVariableSet("z_GBPDOWN",downcounter);
      
      
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
  
   int handle,records;
   
   handle=FileOpen("gbp.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"gbp_open_down",GlobalVariableGet("gbp_open_down"));
   records=FileWrite(handle,"gbp_open_up",GlobalVariableGet("gbp_open_up"));
   
   FileClose(handle);
  
  }
//+------------------------------------------------------------------+
