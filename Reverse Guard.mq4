//+------------------------------------------------------------------+
//|                                                Reverse Guard.mq4 |
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
      int eur_upcounter=GlobalVariableGet("z_EURUP");
      int eur_downcounter=GlobalVariableGet("z_EURDOWN");
      
      int eur_up=GlobalVariableGet("eur_open_up");
      int eur_down=GlobalVariableGet("eur_open_down");
      
      int eur_open=0;
      
      int Eeurusdopen=0;
      int Eeurjpyopen=0;
      int Eeuraudopen=0;
      int Eeurnzdopen=0;
      int Eeurcadopen=0;
      int Eeurchfopen=0;
      int Eeurgbpopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==11){
      if(OrderSymbol()=="EURUSD"){ Eeurusdopen=1;}
     
      
      if(OrderSymbol()=="EURJPY"){ Eeurjpyopen=1;}
      
      
      if(OrderSymbol()=="EURAUD"){ Eeuraudopen=1;}
      
      
      if(OrderSymbol()=="EURNZD"){ Eeurnzdopen=1;}
      
      
      if(OrderSymbol()=="EURCAD"){ Eeurcadopen=1;}
      
      
      if(OrderSymbol()=="EURCHF"){ Eeurchfopen=1;}
      
      
      if(OrderSymbol()=="EURGBP"){ Eeurgbpopen=1;}
      }
   
   }
   if(Eeurusdopen==1&&Eeurjpyopen==1&&Eeuraudopen==1&&Eeurnzdopen==1&&Eeurcadopen==1&&Eeurchfopen==1&&Eeurgbpopen==1){eur_open=1;}
         
         
      if(eur_open==1)
         {
            if(eur_up==1)
               {
                  if(eur_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==11)
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
               }
               
            if(eur_down==1)
               {
                  if(eur_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==11)
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
               }
         
         }
         
         
         
         
         
      int gbp_upcounter=GlobalVariableGet("z_GBPUP");
      int gbp_downcounter=GlobalVariableGet("z_GBPDOWN");
      
      int gbp_up=GlobalVariableGet("gbp_open_up");
      int gbp_down=GlobalVariableGet("gbp_open_down");
      
      int gbp_open=0;
      
      int Ggbpusdopen=0;
      int Ggbpjpyopen=0;
      int Ggbpaudopen=0;
      int Ggbpnzdopen=0;
      int Ggbpcadopen=0;
      int Ggbpchfopen=0;
      int Geurgbpopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==12){
      if(OrderSymbol()=="GBPUSD"){ Ggbpusdopen=1;}
     
      
      if(OrderSymbol()=="GBPJPY"){ Ggbpjpyopen=1;}
      
      
      if(OrderSymbol()=="GBPAUD"){ Ggbpaudopen=1;}
      
      
      if(OrderSymbol()=="GBPNZD"){ Ggbpnzdopen=1;}
      
      
      if(OrderSymbol()=="GBPCAD"){ Ggbpcadopen=1;}
      
      
      if(OrderSymbol()=="GBPCHF"){ Ggbpchfopen=1;}
      
      
      if(OrderSymbol()=="EURGBP"){ Geurgbpopen=1;}
      }
   
   }
   if(Ggbpusdopen==1&&Ggbpjpyopen==1&&Ggbpaudopen==1&&Ggbpnzdopen==1&&Ggbpcadopen==1&&Ggbpchfopen==1&&Geurgbpopen==1){gbp_open=1;}
         
         
      if(gbp_open==1)
         {
            if(gbp_up==1)
               {
                  if(gbp_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==12)
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
               }
               
            if(gbp_down==1)
               {
                  if(gbp_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==12)
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
               }
         
         }
         
         
         
         
      
      int aud_upcounter=GlobalVariableGet("z_AUDUP");
      int aud_downcounter=GlobalVariableGet("z_AUDDOWN");
      
      int aud_up=GlobalVariableGet("aud_open_up");
      int aud_down=GlobalVariableGet("aud_open_down");
      
      int aud_open=0;
      
      int Aaudusdopen=0;
      int Aaudjpyopen=0;
      int Aeuraudopen=0;
      int Aaudnzdopen=0;
      int Aaudcadopen=0;
      int Aaudchfopen=0;
      int Agbpaudopen=0;
   
      for(int i=OrdersTotal();i>-1;i--)
      {
         OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
         if(OrderMagicNumber()==13){
            if(OrderSymbol()=="AUDUSD"){ Aaudusdopen=1;}
        
         
            if(OrderSymbol()=="AUDJPY"){ Aaudjpyopen=1;}
         
         
            if(OrderSymbol()=="EURAUD"){ Aeuraudopen=1;}
         
         
            if(OrderSymbol()=="AUDNZD"){ Aaudnzdopen=1;}
         
         
            if(OrderSymbol()=="AUDCAD"){ Aaudcadopen=1;}
         
         
            if(OrderSymbol()=="AUDCHF"){ Aaudchfopen=1;}
         
         
            if(OrderSymbol()=="GBPAUD"){ Agbpaudopen=1;}
         }
   
      }
      
      if(Aaudusdopen==1&&Aaudjpyopen==1&&Aeuraudopen==1&&Aaudnzdopen==1&&Aaudcadopen==1&&Aaudchfopen==1&&Agbpaudopen==1){aud_open=1;}
         
         
      if(aud_open==1)
         {
            if(aud_up==1)
               {
                  if(aud_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==13)
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
               }
               
            if(aud_down==1)
               {
                  if(aud_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==13)
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
               }
         
         }
         
         
         
         
         
      int nzd_upcounter=GlobalVariableGet("z_NZDUP");
      int nzd_downcounter=GlobalVariableGet("z_NZDDOWN");
      
      int nzd_up=GlobalVariableGet("nzd_open_up");
      int nzd_down=GlobalVariableGet("nzd_open_down");
      
      int nzd_open=0;
      
      int Znzdusdopen=0;
      int Znzdjpyopen=0;
      int Zaudnzdopen=0;
      int Zeurnzdopen=0;
      int Znzdcadopen=0;
      int Znzdchfopen=0;
      int Zgbpnzdopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==14){
      if(OrderSymbol()=="NZDUSD"){ Znzdusdopen=1;}
     
      
      if(OrderSymbol()=="NZDJPY"){ Znzdjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDNZD"){ Zaudnzdopen=1;}
      
      
      if(OrderSymbol()=="EURNZD"){ Zeurnzdopen=1;}
      
      
      if(OrderSymbol()=="NZDCAD"){ Znzdcadopen=1;}
      
      
      if(OrderSymbol()=="NZDCHF"){ Znzdchfopen=1;}
      
      
      if(OrderSymbol()=="GBPNZD"){ Zgbpnzdopen=1;}
      }
   
   }
   if(Znzdusdopen==1&&Znzdjpyopen==1&&Zaudnzdopen==1&&Zeurnzdopen==1&&Znzdcadopen==1&&Znzdchfopen==1&&Zgbpnzdopen==1){nzd_open=1;}
         
         
      if(nzd_open==1)
         {
            if(nzd_up==1)
               {
                  if(nzd_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==14)
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
               }
               
            if(nzd_down==1)
               {
                  if(nzd_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==14)
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
               }
         
         }
         
         
         
         
         
      int jpy_upcounter=GlobalVariableGet("z_JPYUP");
      int jpy_downcounter=GlobalVariableGet("z_JPYDOWN");
      
      int jpy_up=GlobalVariableGet("jpy_open_up");
      int jpy_down=GlobalVariableGet("jpy_open_down");
      
      int jpy_open=0;
      
      int Jusdjpyopen=0;
      int Jeurjpyopen=0;
      int Jaudjpyopen=0;
      int Jnzdjpyopen=0;
      int Jcadjpyopen=0;
      int Jchfjpyopen=0;
      int Jgbpjpyopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==15){
      if(OrderSymbol()=="USDJPY"){ Jusdjpyopen=1;}
     
      
      if(OrderSymbol()=="EURJPY"){ Jeurjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDJPY"){ Jaudjpyopen=1;}
      
      
      if(OrderSymbol()=="NZDJPY"){ Jnzdjpyopen=1;}
      
      
      if(OrderSymbol()=="CADJPY"){ Jcadjpyopen=1;}
      
      
      if(OrderSymbol()=="CHFJPY"){ Jchfjpyopen=1;}
      
      
      if(OrderSymbol()=="GBPJPY"){ Jgbpjpyopen=1;}
      }
   
   }
   if(Jusdjpyopen==1&&Jeurjpyopen==1&&Jaudjpyopen==1&&Jnzdjpyopen==1&&Jcadjpyopen==1&&Jchfjpyopen==1&&Jgbpjpyopen==1){jpy_open=1;}
         
         
      if(jpy_open==1)
         {
            if(jpy_up==1)
               {
                  if(jpy_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==15)
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
               }
               
            if(jpy_down==1)
               {
                  if(jpy_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==15)
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
               }
         
         }
         
         
         
         
         
      int cad_upcounter=GlobalVariableGet("z_CADUP");
      int cad_downcounter=GlobalVariableGet("z_CADDOWN");
      
      int cad_up=GlobalVariableGet("cad_open_up");
      int cad_down=GlobalVariableGet("cad_open_down");
      
      int cad_open=0;
      
      int Cusdcadopen=0;
      int Ccadjpyopen=0;
      int Caudcadopen=0;
      int Cnzdcadopen=0;
      int Ceurcadopen=0;
      int Ccadchfopen=0;
      int Cgbpcadopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
     
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
     if(OrderMagicNumber()==16){ 
      if(OrderSymbol()=="USDCAD"){ Cusdcadopen=1;}
     
      
      if(OrderSymbol()=="CADJPY"){ Ccadjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDCAD"){ Caudcadopen=1;}
      
      
      if(OrderSymbol()=="NZDCAD"){ Cnzdcadopen=1;}
      
      
      if(OrderSymbol()=="EURCAD"){ Ceurcadopen=1;}
      
      
      if(OrderSymbol()=="CADCHF"){ Ccadchfopen=1;}
      
      
      if(OrderSymbol()=="GBPCAD"){ Cgbpcadopen=1;}
      }
   
   }
    if(Cusdcadopen==1&&Ccadjpyopen==1&&Caudcadopen==1&&Cnzdcadopen==1&&Ceurcadopen==1&&Ccadchfopen==1&&Cgbpcadopen==1){cad_open=1;}
         
         
      if(cad_open==1)
         {
            if(cad_up==1)
               {
                  if(cad_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==16)
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
               }
               
            if(cad_down==1)
               {
                  if(cad_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==16)
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
               }
         
         }
         
         
         
         
         
      int chf_upcounter=GlobalVariableGet("z_CHFUP");
      int chf_downcounter=GlobalVariableGet("z_CHFDOWN");
      
      int chf_up=GlobalVariableGet("chf_open_up");
      int chf_down=GlobalVariableGet("chf_open_down");
      
      int chf_open=0;
      
      int Fusdchfopen=0;
      int Fchfjpyopen=0;
      int Faudchfopen=0;
      int Fnzdchfopen=0;
      int Fcadchfopen=0;
      int Feurchfopen=0;
      int Fgbpchfopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      
      if(OrderMagicNumber()==17){
      if(OrderSymbol()=="USDCHF"){ Fusdchfopen=1;}
     
      
      if(OrderSymbol()=="CHFJPY"){ Fchfjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDCHF"){ Faudchfopen=1;}
      
      
      if(OrderSymbol()=="NZDCHF"){ Fnzdchfopen=1;}
      
      
      if(OrderSymbol()=="CADCHF"){ Fcadchfopen=1;}
      
      
      if(OrderSymbol()=="EURCHF"){ Feurchfopen=1;}
      
      
      if(OrderSymbol()=="GBPCHF"){ Fgbpchfopen=1;}
      }    
   
   }
   if(Fusdchfopen==1&&Fchfjpyopen==1&&Faudchfopen==1&&Fnzdchfopen==1&&Fcadchfopen==1&&Feurchfopen==1&&Fgbpchfopen==1){chf_open=1;}
         
         
      if(chf_open==1)
         {
            if(chf_up==1)
               {
                  if(chf_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==17)
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
               }
               
            if(chf_down==1)
               {
                  if(chf_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==17)
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
               }
         
         }
         
         
         
         
         
      int usd_upcounter=GlobalVariableGet("z_USDUP");
      int usd_downcounter=GlobalVariableGet("z_USDDOWN");
      
      int usd_up=GlobalVariableGet("usd_open_up");
      int usd_down=GlobalVariableGet("usd_open_down");
      
      int usd_open=0;
      
      int Deurusdopen=0;
      int Dusdjpyopen=0;
      int Daudusdopen=0;
      int Dnzdusdopen=0;
      int Dusdcadopen=0;
      int Dusdchfopen=0;
      int Dgbpusdopen=0;
   
   for(int i=OrdersTotal();i>-1;i--)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderMagicNumber()==18){
      if(OrderSymbol()=="EURUSD"){ Deurusdopen=1;}
     
      
      if(OrderSymbol()=="USDJPY"){ Dusdjpyopen=1;}
      
      
      if(OrderSymbol()=="AUDUSD"){ Daudusdopen=1;}
      
      
      if(OrderSymbol()=="NZDUSD"){ Dnzdusdopen=1;}
      
      
      if(OrderSymbol()=="USDCAD"){ Dusdcadopen=1;}
      
      
      if(OrderSymbol()=="USDCHF"){ Dusdchfopen=1;}
      
      
      if(OrderSymbol()=="GBPUSD"){ Dgbpusdopen=1;}
      }
   
   }
   if(Deurusdopen==1&&Dusdjpyopen==1&&Daudusdopen==1&&Dnzdusdopen==1&&Dusdcadopen==1&&Dusdchfopen==1&&Dgbpusdopen==1){usd_open=1;}
         
         
      if(usd_open==1)
         {
            if(usd_up==1)
               {
                  if(usd_downcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                           
                                 if(OrderMagicNumber()==18)
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
               }
               
            if(usd_down==1)
               {
                  if(usd_upcounter>=1)
                     {
                        for(int x=0;x<2;x++){
                        for(int i=OrdersTotal();i>-1;i--)
                        {
                           OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
                          
                                 if(OrderMagicNumber()==18)
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
               }
         
         }
   
   
   
   
   Comment(
      "aud_up: ",aud_up,"  aud_down: ",aud_down,
      "  eur_up: ",eur_up,"  eur_down: ",eur_down,
      "  gbp_up: ",gbp_up,"  gbp_down: ",gbp_down,
      "  nzd_up: ",nzd_up,"  nzd_down: ",nzd_down,
      "  jpy_up: ",jpy_up,"  jpy_down: ",jpy_down,
      "  cad_up: ",cad_up,"  cad_down: ",cad_down,
      "  chf_up: ",chf_up,"  chf_down: ",chf_down
      
      
      );
   
   
   
  }
//+------------------------------------------------------------------+
