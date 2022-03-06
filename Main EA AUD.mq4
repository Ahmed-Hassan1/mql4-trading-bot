//+------------------------------------------------------------------+
//|                                                  Main EA AUD.mq4 |
//|                                                            exawy |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "exawy"
#property link      "https://www.mql5.com"
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
   
   handle=FileOpen("aud.csv",FILE_CSV|FILE_READ,',');
   
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
   int audusd_up=GlobalVariableGet("audusd_up");
   int audusd_down=GlobalVariableGet("audusd_down");
   
   int audjpy_up=GlobalVariableGet("audjpy_up");
   int audjpy_down=GlobalVariableGet("audjpy_down");
   
   int euraud_up=GlobalVariableGet("euraud_up");
   int euraud_down=GlobalVariableGet("euraud_down");
   
   int audnzd_up=GlobalVariableGet("audnzd_up");
   int audnzd_down=GlobalVariableGet("audnzd_down");
   
   int audcad_up=GlobalVariableGet("audcad_up");
   int audcad_down=GlobalVariableGet("audcad_down");
   
   int audchf_up=GlobalVariableGet("audchf_up");
   int audchf_down=GlobalVariableGet("audchf_down");
   
   int gbpaud_up=GlobalVariableGet("gbpaud_up");
   int gbpaud_down=GlobalVariableGet("gbpaud_down");
   
   
   /*
   int audusdopen=0;
   int audjpyopen=0;
   int euraudopen=0;
   int audnzdopen=0;
   int audcadopen=0;
   int audchfopen=0;
   int gbpaudopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==3){
         if(OrderSymbol()=="AUDUSD"){ audusdopen=1;}
        
         
         if(OrderSymbol()=="AUDJPY"){ audjpyopen=1;}
         
         
         if(OrderSymbol()=="EURAUD"){ euraudopen=1;}
         
         
         if(OrderSymbol()=="AUDNZD"){ audnzdopen=1;}
         
         
         if(OrderSymbol()=="AUDCAD"){ audcadopen=1;}
         
         
         if(OrderSymbol()=="AUDCHF"){ audchfopen=1;}
         
         
         if(OrderSymbol()=="GBPAUD"){ gbpaudopen=1;}
      }
   
   }
   */
   
    static int up;
    static int down;
     
    up=GlobalVariableGet("aud_open_up"); 
    down=GlobalVariableGet("aud_open_down");
      
    int upcounter=0;  
    
    int Uaudusd=0;
    int Uaudjpy=0;
    int Ueuraud=0;
    int Uaudnzd=0;
    int Uaudcad=0;
    int Uaudchf=0;
    int Ugbpaud=0;
    
    if(audusd_up==1&&audusd_down==0){upcounter++; Uaudusd=1;}  
    if(audjpy_up==1&&audjpy_down==0){upcounter++; Uaudjpy=1;}
    if(euraud_up==0&&euraud_down==1){upcounter++; Ueuraud=1;}
    if(audnzd_up==1&&audnzd_down==0){upcounter++; Uaudnzd=1;}
    if(audcad_up==1&&audcad_down==0){upcounter++; Uaudcad=1;}
    if(audchf_up==1&&audchf_down==0){upcounter++; Uaudchf=1;}
    if(gbpaud_up==0&&gbpaud_down==1){upcounter++; Ugbpaud=1;}
    //Print("UPUPUP ",upcounter); 
   if(upcounter>=7&&up==0)
      {   up=1;
          down=0;
         
            
            while(!OrderSend("AUDUSD",OP_BUYSTOP,lot,MarketInfo("AUDUSD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
         
           
            while(!OrderSend("AUDJPY",OP_BUYSTOP,lot,MarketInfo("AUDJPY",MODE_ASK)+(stop/100),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURAUD",OP_SELLSTOP,lot,MarketInfo("EURAUD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDNZD",OP_BUYSTOP,lot,MarketInfo("AUDNZD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCAD",OP_BUYSTOP,lot,MarketInfo("AUDCAD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCHF",OP_BUYSTOP,lot,MarketInfo("AUDCHF",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPAUD",OP_SELLSTOP,lot,MarketInfo("GBPAUD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
         
      }
     
    int downcounter=0;  
    
    int Daudusd=0;
    int Daudjpy=0;
    int Deuraud=0;
    int Daudnzd=0;
    int Daudcad=0;
    int Daudchf=0;
    int Dgbpaud=0;
    
    if(audusd_up==0&&audusd_down==1){downcounter++; Daudusd=1;}  
    if(audjpy_up==0&&audjpy_down==1){downcounter++; Daudjpy=1;}
    if(euraud_up==1&&euraud_down==0){downcounter++; Deuraud=1;}
    if(audnzd_up==0&&audnzd_down==1){downcounter++; Daudnzd=1;}
    if(audcad_up==0&&audcad_down==1){downcounter++; Daudcad=1;}
    if(audchf_up==0&&audchf_down==1){downcounter++; Daudchf=1;}
    if(gbpaud_up==1&&gbpaud_down==0){downcounter++; Dgbpaud=1;}
   //Print("DOWNDOWNDOWN ",downcounter);   
   if(downcounter>=7&&down==0)
      {   up=0;
          down=1;  
         
            
            while(!OrderSend("AUDUSD",OP_SELLSTOP,lot,MarketInfo("AUDUSD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDJPY",OP_SELLSTOP,lot,MarketInfo("AUDJPY",MODE_ASK)-(stop/100),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("EURAUD",OP_BUYSTOP,lot,MarketInfo("EURAUD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDNZD",OP_SELLSTOP,lot,MarketInfo("AUDNZD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCAD",OP_SELLSTOP,lot,MarketInfo("AUDCAD",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("AUDCHF",OP_SELLSTOP,lot,MarketInfo("AUDCHF",MODE_ASK)-(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
           
            while(!OrderSend("GBPAUD",OP_BUYSTOP,lot,MarketInfo("GBPAUD",MODE_ASK)+(stop/10000),100,NULL,NULL,NULL,3,NULL,clrNONE))
            {break;
            }
         
      }
   GlobalVariableSet("aud_open_up",up);
   GlobalVariableSet("aud_open_down",down);
   
   GlobalVariableSet("z_AUDUP",upcounter);
   GlobalVariableSet("z_AUDDOWN",downcounter);
   
   
   Comment("Upacounter: ",upcounter,"  Downcounter: ",downcounter,"  UP: ",up,"  DOWN: ",down);
   
   
   
   int handle,records;
   
   handle=FileOpen("aud.csv",FILE_CSV|FILE_WRITE,',');
   
   records=FileWrite(handle,"aud_open_down",GlobalVariableGet("aud_open_down"));
   records=FileWrite(handle,"aud_open_up",GlobalVariableGet("aud_open_up"));
   
   FileClose(handle);
   
  }
//+------------------------------------------------------------------+
