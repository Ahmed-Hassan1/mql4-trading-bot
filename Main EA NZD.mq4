//+------------------------------------------------------------------+
//|                                                  Main EA NZD.mq4 |
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
   
   handle=FileOpen("nzd.csv",FILE_CSV|FILE_READ,',');
   
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
   int nzdusd_up=GlobalVariableGet("nzdusd_up");
   int nzdusd_down=GlobalVariableGet("nzdusd_down");
   
   int nzdjpy_up=GlobalVariableGet("nzdjpy_up");
   int nzdjpy_down=GlobalVariableGet("nzdjpy_down");
   
   int audnzd_up=GlobalVariableGet("audnzd_up");
   int audnzd_down=GlobalVariableGet("audnzd_down");
   
   int eurnzd_up=GlobalVariableGet("eurnzd_up");
   int eurnzd_down=GlobalVariableGet("eurnzd_down");
   
   int nzdcad_up=GlobalVariableGet("nzdcad_up");
   int nzdcad_down=GlobalVariableGet("nzdcad_down");
   
   int nzdchf_up=GlobalVariableGet("nzdchf_up");
   int nzdchf_down=GlobalVariableGet("nzdchf_down");
   
   int gbpnzd_up=GlobalVariableGet("gbpnzd_up");
   int gbpnzd_down=GlobalVariableGet("gbpnzd_down");
   
   
   /*
   int nzdusdopen=0;
   int nzdjpyopen=0;
   int audnzdopen=0;
   int eurnzdopen=0;
   int nzdcadopen=0;
   int nzdchfopen=0;
   int gbpnzdopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==4){
      if(OrderSymbol()=="NZDUSD"){ nzdusdopen=1;}
     
      
      if(OrderSymbol()=="NZDJPY"){ nzdjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDNZD"){ audnzdopen=1;}
      
      
      if(OrderSymbol()=="EURNZD"){ eurnzdopen=1;}
      
      
      if(OrderSymbol()=="NZDCAD"){ nzdcadopen=1;}
      
      
      if(OrderSymbol()=="NZDCHF"){ nzdchfopen=1;}
      
      
      if(OrderSymbol()=="GBPNZD"){ gbpnzdopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
    
    up=GlobalVariableGet("nzd_open_up");
    down=GlobalVariableGet("nzd_open_down");
      
    int upcounter=0;  
    
    int Unzdusd=0;
    int Unzdjpy=0;
    int Uaudnzd=0;
    int Ueurnzd=0;
    int Unzdcad=0;
    int Unzdchf=0;
    int Ugbpnzd=0;
    
    if(nzdusd_up==1&&nzdusd_down==0){upcounter++; Unzdusd=1;}  
    if(nzdjpy_up==1&&nzdjpy_down==0){upcounter++; Unzdjpy=1;}
    if(audnzd_up==0&&audnzd_down==1){upcounter++; Uaudnzd=1;}
    if(eurnzd_up==0&&eurnzd_down==1){upcounter++; Ueurnzd=1;}
    if(nzdcad_up==1&&nzdcad_down==0){upcounter++; Unzdcad=1;}
    if(nzdchf_up==1&&nzdchf_down==0){upcounter++; Unzdchf=1;}
    if(gbpnzd_up==0&&gbpnzd_down==1){upcounter++; Ugbpnzd=1;}
     
   if(upcounter>=7&&up==0)
      {  up=1;
         down=0;
            
            while(!OrderSend("NZDUSD",OP_BUYSTOP,lot,MarketInfo("NZDUSD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
          
            while(!OrderSend("NZDJPY",OP_BUYSTOP,lot,MarketInfo("NZDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDNZD",OP_SELLSTOP,lot,MarketInfo("AUDNZD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURNZD",OP_SELLSTOP,lot,MarketInfo("EURNZD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCAD",OP_BUYSTOP,lot,MarketInfo("NZDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCHF",OP_BUYSTOP,lot,MarketInfo("NZDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPNZD",OP_SELLSTOP,lot,MarketInfo("GBPNZD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Dnzdusd=0;
    int Dnzdjpy=0;
    int Daudnzd=0;
    int Deurnzd=0;
    int Dnzdcad=0;
    int Dnzdchf=0;
    int Dgbpnzd=0;
    
    if(nzdusd_up==0&&nzdusd_down==1){downcounter++; Dnzdusd=1;}  
    if(nzdjpy_up==0&&nzdjpy_down==1){downcounter++; Dnzdjpy=1;}
    if(audnzd_up==1&&audnzd_down==0){downcounter++; Daudnzd=1;}
    if(eurnzd_up==1&&eurnzd_down==0){downcounter++; Deurnzd=1;}
    if(nzdcad_up==0&&nzdcad_down==1){downcounter++; Dnzdcad=1;}
    if(nzdchf_up==0&&nzdchf_down==1){downcounter++; Dnzdchf=1;}
    if(gbpnzd_up==1&&gbpnzd_down==0){downcounter++; Dgbpnzd=1;}
     
   if(downcounter>=7&&down==0)
      {  up=0;
         down=1;
            
            while(!OrderSend("NZDUSD",OP_SELLSTOP,lot,MarketInfo("NZDUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDJPY",OP_SELLSTOP,lot,MarketInfo("NZDJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDNZD",OP_BUYSTOP,lot,MarketInfo("AUDNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURNZD",OP_BUYSTOP,lot,MarketInfo("EURNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCAD",OP_SELLSTOP,lot,MarketInfo("NZDCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("NZDCHF",OP_SELLSTOP,lot,MarketInfo("NZDCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPNZD",OP_BUYSTOP,lot,MarketInfo("GBPNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,4,NULL,clrNONE))
            {break;
            }
         
      }
      
      GlobalVariableSet("nzd_open_up",up);
      GlobalVariableSet("nzd_open_down",down);
      
      GlobalVariableSet("z_NZDUP",upcounter);
      GlobalVariableSet("z_NZDDOWN",downcounter);
      
      
      Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
 
 
   int handle,records;
   
   handle=FileOpen("nzd.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"nzd_open_down",GlobalVariableGet("nzd_open_down"));
   records=FileWrite(handle,"nzd_open_up",GlobalVariableGet("nzd_open_up"));
   
   FileClose(handle);
 
  }
//+------------------------------------------------------------------+
