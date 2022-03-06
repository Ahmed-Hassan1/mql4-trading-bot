//+------------------------------------------------------------------+
//|                                                      TPandSL.mq4 |
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

      input double TP=500;
      input double SL=500;
      input double keet=100;
      
      
int OnInit()
  {
//---
   
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
   
   double eurprofit=0;
   double audprofit=0;
   double nzdprofit=0;
   double gbpprofit=0;
   double jpyprofit=0;
   double cadprofit=0;
   double chfprofit=0;
   double usdprofit=0;
   
   
   if(GlobalVariableGet("eur_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==1){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="EURUSD")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="EURJPY")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }   
      
      if(OrderSymbol()=="EURAUD")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="EURNZD")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="EURCAD")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="EURCHF")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="EURGBP")
         {
          eurprofit=eurprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }  
         }
         } 
  
   }
   }
   
   if(GlobalVariableGet("eur_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==1){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="EURUSD")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="EURJPY")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }   
      
      if(OrderSymbol()=="EURAUD")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="EURNZD")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="EURCAD")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="EURCHF")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="EURGBP")
         {
          eurprofit=eurprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }  
         }
         } 
  
   }
   }
   
   
   if(GlobalVariableGet("aud_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==3){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="AUDUSD")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="AUDJPY")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }   
      
      if(OrderSymbol()=="AUDNZD")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="AUDCAD")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="AUDCHF")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="EURAUD")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="GBPAUD")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
          
         }
         }  
  
   }
   }
   
   if(GlobalVariableGet("aud_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==3){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="AUDUSD")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="AUDJPY")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }   
      
      if(OrderSymbol()=="AUDNZD")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="AUDCAD")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="AUDCHF")
         {
          audprofit=audprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="EURAUD")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="GBPAUD")
         {
          audprofit=audprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
          
         }
         }  
  
   }
   }
   
   
   if(GlobalVariableGet("gbp_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==2){
      
    if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="GBPUSD")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="GBPAUD")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
      
      if(OrderSymbol()=="GBPJPY")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
         
      if(OrderSymbol()=="GBPNZD")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="GBPCAD")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="GBPCHF")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="EURGBP")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         } 
         
         }  
      }
   }
   }
   
   if(GlobalVariableGet("gbp_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==2){
      
    if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="GBPUSD")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="GBPAUD")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
      
      if(OrderSymbol()=="GBPJPY")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
         
      if(OrderSymbol()=="GBPNZD")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="GBPCAD")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="GBPCHF")
         {
          gbpprofit=gbpprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="EURGBP")
         {
          gbpprofit=gbpprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         } 
         
         }  
      }
   }
   }
   
   
   if(GlobalVariableGet("jpy_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==5){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="EURJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
      
      if(OrderSymbol()=="GBPJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }   
      
      if(OrderSymbol()=="AUDJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
         
      if(OrderSymbol()=="NZDJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
      
      if(OrderSymbol()=="CADJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }   
     
      if(OrderSymbol()=="CHFJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
       
      if(OrderSymbol()=="USDJPY")
         {
          jpyprofit=jpyprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
         }
         }   
  
   }
   }
   
   if(GlobalVariableGet("jpy_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==5){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="EURJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
      
      if(OrderSymbol()=="GBPJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }   
      
      if(OrderSymbol()=="AUDJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
         
      if(OrderSymbol()=="NZDJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
      
      if(OrderSymbol()=="CADJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }   
     
      if(OrderSymbol()=="CHFJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
       
      if(OrderSymbol()=="USDJPY")
         {
          jpyprofit=jpyprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
         }
         }   
  
   }
   }
   
   
   if(GlobalVariableGet("nzd_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==4){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="NZDUSD")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="NZDJPY")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }   
      
      if(OrderSymbol()=="NZDCAD")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="NZDCHF")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="EURNZD")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="GBPNZD")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="AUDNZD")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         }
         }   
  
   }
   }
   
   if(GlobalVariableGet("nzd_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==4){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="NZDUSD")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="NZDJPY")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }   
      
      if(OrderSymbol()=="NZDCAD")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="NZDCHF")
         {
          nzdprofit=nzdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="EURNZD")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="GBPNZD")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="AUDNZD")
         {
          nzdprofit=nzdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         }
         }   
  
   }
   }
   
   
   if(GlobalVariableGet("cad_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==6){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="CADJPY")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
      
      if(OrderSymbol()=="CADCHF")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
      
      if(OrderSymbol()=="USDCAD")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="EURCAD")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="GBPCAD")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="AUDCAD")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="NZDCAD")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         }
         }   
  
   }
   }
   
   if(GlobalVariableGet("cad_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==6){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="CADJPY")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
      
      if(OrderSymbol()=="CADCHF")
         {
          cadprofit=cadprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
      
      if(OrderSymbol()=="USDCAD")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="EURCAD")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="GBPCAD")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="AUDCAD")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="NZDCAD")
         {
          cadprofit=cadprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         }
         }   
  
   }
   }
   
   
   if(GlobalVariableGet("chf_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==7){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="CHFJPY")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
      
      if(OrderSymbol()=="USDCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
      
      if(OrderSymbol()=="EURCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="GBPCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="AUDCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="NZDCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="CADCHF")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         }
         }   
  
   }
   }
   
   if(GlobalVariableGet("chf_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==7){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="CHFJPY")
         {
          chfprofit=chfprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
      
      if(OrderSymbol()=="USDCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
      
      if(OrderSymbol()=="EURCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="GBPCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="AUDCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="NZDCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="CADCHF")
         {
          chfprofit=chfprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         }
         }   
  
   }
   }
   
   
   if(GlobalVariableGet("usd_open_up")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==8){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="USDJPY")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*100);
         }
      
      if(OrderSymbol()=="USDCHF")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
      
      if(OrderSymbol()=="EURUSD")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         
      if(OrderSymbol()=="GBPUSD")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
      
      if(OrderSymbol()=="AUDUSD")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
     
      if(OrderSymbol()=="NZDUSD")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
       
      if(OrderSymbol()=="USDCAD")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         }
         }   
  
   }
   }
   
   if(GlobalVariableGet("usd_open_down")==1){
   for(int i=OrdersTotal()-1;i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==8){
      
      if(OrderType()==OP_BUY||OrderType()==OP_SELL){
      if(OrderSymbol()=="USDJPY")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*100);
         }
      
      if(OrderSymbol()=="USDCHF")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }   
      
      if(OrderSymbol()=="EURUSD")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
         
      if(OrderSymbol()=="GBPUSD")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
      
      if(OrderSymbol()=="AUDUSD")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }   
     
      if(OrderSymbol()=="NZDUSD")
         {
          usdprofit=usdprofit+((MarketInfo(OrderSymbol(),MODE_BID)-OrderOpenPrice())*10000);
         }
       
      if(OrderSymbol()=="USDCAD")
         {
          usdprofit=usdprofit+((OrderOpenPrice()-MarketInfo(OrderSymbol(),MODE_ASK))*10000);
         }
         }
         }   
  
   }
   }
   
   
   
   //SL&&TP
   //if(any.group >=||<=){do something}
   static double eurmin=-SL;
   
   if(eurprofit>=keet&&eurmin<0){eurmin=0;}
   if(eurprofit>200&&eurprofit>=(eurmin+200)){eurmin=eurmin+50;}
   
   
   if(eurprofit<=eurmin||eurprofit>=(TP))
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="EURUSD"||OrderSymbol()=="EURJPY"||OrderSymbol()=="EURAUD"||OrderSymbol()=="EURNZD"||
               OrderSymbol()=="EURCAD"||OrderSymbol()=="EURCHF"||OrderSymbol()=="EURGBP")
              {
                  if(OrderMagicNumber()==1)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
        eurmin=-SL;
      }
      
      
   static double gbpmin=-SL;
   
   if(gbpprofit>=keet&&gbpmin<0){gbpmin=0;}
   if(gbpprofit>200&&gbpprofit>=(gbpmin+200)){gbpmin=gbpmin+50;}
   
   
   if(gbpprofit<=gbpmin||gbpprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="GBPUSD"||OrderSymbol()=="GBPJPY"||OrderSymbol()=="GBPAUD"||OrderSymbol()=="GBPNZD"||
               OrderSymbol()=="GBPCAD"||OrderSymbol()=="GBPCHF"||OrderSymbol()=="EURGBP")
              {
                  if(OrderMagicNumber()==2)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         gbpmin=-SL;
      }
      
      
   static double audmin=-SL;
   
   if(audprofit>=keet&&audmin<0){audmin=0;}
   if(audprofit>200&&audprofit>=(audmin+200)){audmin=audmin+50;}
   
   
   if(audprofit<=audmin||audprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="AUDUSD"||OrderSymbol()=="AUDJPY"||OrderSymbol()=="EURAUD"||OrderSymbol()=="AUDNZD"||
               OrderSymbol()=="GBPAUD"||OrderSymbol()=="AUDCAD"||OrderSymbol()=="AUDCHF")
              {
                  if(OrderMagicNumber()==3)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         audmin=-SL;
      }
   
   static double nzdmin=-SL;
   
   if(nzdprofit>=keet&&nzdmin<0){nzdmin=0;}
   if(nzdprofit>200&&nzdprofit>=(nzdmin+200)){nzdmin=nzdmin+50;}
   
   
   if(nzdprofit<=nzdmin||nzdprofit>=TP)
      {
      
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="NZDUSD"||OrderSymbol()=="NZDJPY"||OrderSymbol()=="NZDCAD"||OrderSymbol()=="NZDCHF"||
               OrderSymbol()=="AUDNZD"||OrderSymbol()=="GBPNZD"||OrderSymbol()=="EURNZD")
              {
                  if(OrderMagicNumber()==4)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         nzdmin=-SL;
      }
      
      
   static double jpymin=-SL;
   
   if(jpyprofit>=keet&&jpymin<0){jpymin=0;}
   if(jpyprofit>200&&jpyprofit>=(jpymin+200)){jpymin=jpymin+50;}
   
   
   if(jpyprofit<=jpymin||jpyprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="USDJPY"||OrderSymbol()=="EURJPY"||OrderSymbol()=="GBPJPY"||OrderSymbol()=="AUDJPY"||
               OrderSymbol()=="NZDJPY"||OrderSymbol()=="CADJPY"||OrderSymbol()=="CHFJPY")
              {
                  if(OrderMagicNumber()==5)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         jpymin=-SL;
      }
      
   static double cadmin=-SL;
   
   if(cadprofit>=keet&&cadmin<0){cadmin=0;}
   if(cadprofit>200&&cadprofit>=(cadmin+200)){cadmin=cadmin+50;}
   
   
   if(cadprofit<=cadmin||cadprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="USDCAD"||OrderSymbol()=="GBPCAD"||OrderSymbol()=="AUDCAD"||OrderSymbol()=="CADJPY"||
               OrderSymbol()=="EURCAD"||OrderSymbol()=="CADCHF"||OrderSymbol()=="NZDCAD")
              {
                  if(OrderMagicNumber()==6)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         cadmin=-SL;
      }
      
      
   static double chfmin=-SL;
   
   if(chfprofit>=keet&&chfmin<0){chfmin=0;}
   if(chfprofit>200&&chfprofit>=(chfmin+200)){chfmin=chfmin+50;}
   
   
   if(chfprofit<=chfmin||chfprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="CHFJPY"||OrderSymbol()=="USDCHF"||OrderSymbol()=="GBPCHF"||OrderSymbol()=="AUDCHF"||
               OrderSymbol()=="NZDCHF"||OrderSymbol()=="EURCHF"||OrderSymbol()=="CADCHF")
              {
                  if(OrderMagicNumber()==7)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         chfmin=-SL;
      }  
      
   static double usdmin=-SL;
   
   if(usdprofit>=keet&&usdmin<0){usdmin=0;}
   if(usdprofit>200&&usdprofit>=(usdmin+200)){usdmin=usdmin+50;}
   
   
   if(usdprofit<=usdmin||usdprofit>=TP)
      {
        for(int x=0;x<2;x++){
         for(int i=OrdersTotal();i>-1;i--)
         {
            OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
            if(OrderSymbol()=="USDJPY"||OrderSymbol()=="USDCHF"||OrderSymbol()=="GBPUSD"||OrderSymbol()=="AUDUSD"||
               OrderSymbol()=="NZDUSD"||OrderSymbol()=="EURUSD"||OrderSymbol()=="USDCAD")
              {
                  if(OrderMagicNumber()==8)
                  {
                  while(!OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),MODE_BID),99,clrNONE))
                  {break;
                  }
                  while(!OrderDelete(OrderTicket(),clrNONE))
                  {break;
                  }
                  }
              }
         }
         }
         usdmin=-SL;
      }

   
   
   int eur1=eurmin,eur2=eurprofit; int gbp1=gbpmin,gbp2=gbpprofit; int aud1=audmin,aud2=audprofit; int nzd1=nzdmin,nzd2=nzdprofit; 
   int cad1=cadmin,cad2=cadprofit; int jpy1=jpymin,jpy2=jpyprofit; int chf1=chfmin,chf2=chfprofit; int usd1=usdmin,usd2=usdprofit;
   
   Comment(
   "EURmin/Profit: ",eur1,"/",eur2,
   "  GBPmin/Profit: ",gbp1,"/",gbp2,
   "  AUDmin/Profit: ",aud1,"/",aud2,
   "  NZDmin/Profit: ",nzd1,"/",nzd2,
   "  CADmin/Profit: ",cad1,"/",cad2,
   "  JPYmin/Profit: ",jpy1,"/",jpy2,
   "  CHFmin/Profit: ",chf1,"/",chf2,
   "  USDmin/Profit: ",usd1,"/",usd2
   );
   
  }
//+------------------------------------------------------------------+
