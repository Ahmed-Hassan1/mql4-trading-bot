//+------------------------------------------------------------------+
//|                                                      Flag EA.mq4 |
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
   double audusd_atrup=iCustom("AUDUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double audusd_atrdown=iCustom("AUDUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double audnzd_atrup=iCustom("AUDNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double audnzd_atrdown=iCustom("AUDNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double audcad_atrup=iCustom("AUDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double audcad_atrdown=iCustom("AUDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double audchf_atrup=iCustom("AUDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double audchf_atrdown=iCustom("AUDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double audjpy_atrup=iCustom("AUDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double audjpy_atrdown=iCustom("AUDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double cadchf_atrup=iCustom("CADCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double cadchf_atrdown=iCustom("CADCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double cadjpy_atrup=iCustom("CADJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double cadjpy_atrdown=iCustom("CADJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double chfjpy_atrup=iCustom("CHFJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double chfjpy_atrdown=iCustom("CHFJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurcad_atrup=iCustom("EURCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurcad_atrdown=iCustom("EURCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double euraud_atrup=iCustom("EURAUD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double euraud_atrdown=iCustom("EURAUD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurchf_atrup=iCustom("EURCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurchf_atrdown=iCustom("EURCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurgbp_atrup=iCustom("EURGBP",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurgbp_atrdown=iCustom("EURGBP",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurjpy_atrup=iCustom("EURJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurjpy_atrdown=iCustom("EURJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurnzd_atrup=iCustom("EURNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurnzd_atrdown=iCustom("EURNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double eurusd_atrup=iCustom("EURUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double eurusd_atrdown=iCustom("EURUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpaud_atrup=iCustom("GBPAUD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpaud_atrdown=iCustom("GBPAUD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpcad_atrup=iCustom("GBPCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpcad_atrdown=iCustom("GBPCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpchf_atrup=iCustom("GBPCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpchf_atrdown=iCustom("GBPCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpjpy_atrup=iCustom("GBPJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpjpy_atrdown=iCustom("GBPJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpnzd_atrup=iCustom("GBPNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpnzd_atrdown=iCustom("GBPNZD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double gbpusd_atrup=iCustom("GBPUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double gbpusd_atrdown=iCustom("GBPUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double nzdcad_atrup=iCustom("NZDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double nzdcad_atrdown=iCustom("NZDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double nzdchf_atrup=iCustom("NZDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double nzdchf_atrdown=iCustom("NZDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double nzdjpy_atrup=iCustom("NZDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double nzdjpy_atrdown=iCustom("NZDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double nzdusd_atrup=iCustom("NZDUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double nzdusd_atrdown=iCustom("NZDUSD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double usdcad_atrup=iCustom("USDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double usdcad_atrdown=iCustom("USDCAD",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double usdchf_atrup=iCustom("USDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double usdchf_atrdown=iCustom("USDCHF",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   double usdjpy_atrup=iCustom("USDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,0,1);
   double usdjpy_atrdown=iCustom("USDJPY",PERIOD_H4,"Auto trend forecaster",26,1.9,200,1,1);
   
   
   

  
      
      if(eurusd_atrup>0&&eurusd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurusd_up",1);
      GlobalVariableSet("eurusd_down",0);          
      }
      
      if(eurusd_atrdown>0&&eurusd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurusd_up",0);
      GlobalVariableSet("eurusd_down",1);      
      }
   
   
  
      if(eurjpy_atrup>0&&eurjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurjpy_up",1);
      GlobalVariableSet("eurjpy_down",0);          
      }
      
      if(eurjpy_atrdown>0&&eurjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurjpy_up",0);
      GlobalVariableSet("eurjpy_down",1);      
      } 
   
   
  
      if(euraud_atrup>0&&euraud_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("euraud_up",1);
      GlobalVariableSet("euraud_down",0);          
      }
      
      if(euraud_atrdown>0&&euraud_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("euraud_up",0);
      GlobalVariableSet("euraud_down",1);      
      } 
  
   
  
      if(eurnzd_atrup>0&&eurnzd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurnzd_up",1);
      GlobalVariableSet("eurnzd_down",0);          
      }
      
      if(eurnzd_atrdown>0&&eurnzd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurnzd_up",0);
      GlobalVariableSet("eurnzd_down",1);      
      } 
   
   
   
      if(eurcad_atrup>0&&eurcad_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurcad_up",1);
      GlobalVariableSet("eurcad_down",0);          
      }
      
      if(eurcad_atrdown>0&&eurcad_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurcad_up",0);
      GlobalVariableSet("eurcad_down",1);      
      } 
   
   
   
      if(eurchf_atrup>0&&eurchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurchf_up",1);
      GlobalVariableSet("eurchf_down",0);          
      }
      
      if(eurchf_atrdown>0&&eurchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurchf_up",0);
      GlobalVariableSet("eurchf_down",1);      
      } 
   
   
  
      if(eurgbp_atrup>0&&eurgbp_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("eurgbp_up",1);
      GlobalVariableSet("eurgbp_down",0);          
      }
      
      if(eurgbp_atrdown>0&&eurgbp_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("eurgbp_up",0);
      GlobalVariableSet("eurgbp_down",1);      
      } 
   
   
   
      if(audusd_atrup>0&&audusd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("audusd_up",1);
      GlobalVariableSet("audusd_down",0);          
      }
      
      if(audusd_atrdown>0&&audusd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("audusd_up",0);
      GlobalVariableSet("audusd_down",1);      
      } 
   
   
   
      if(audjpy_atrup>0&&audjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("audjpy_up",1);
      GlobalVariableSet("audjpy_down",0);          
      }
      
      if(audjpy_atrdown>0&&audjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("audjpy_up",0);
      GlobalVariableSet("audjpy_down",1);      
      } 
   
   
   
      if(audnzd_atrup>0&&audnzd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("audnzd_up",1);
      GlobalVariableSet("audnzd_down",0);          
      }
      
      if(audnzd_atrdown>0&&audnzd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("audnzd_up",0);
      GlobalVariableSet("audnzd_down",1);      
      } 
   
   
   
      if(audcad_atrup>0&&audcad_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("audcad_up",1);
      GlobalVariableSet("audcad_down",0);          
      }
      
      if(audcad_atrdown>0&&audcad_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("audcad_up",0);
      GlobalVariableSet("audcad_down",1);      
      } 
   
   
   
      if(audchf_atrup>0&&audchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("audchf_up",1);
      GlobalVariableSet("audchf_down",0);          
      }
      
      if(audchf_atrdown>0&&audchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("audchf_up",0);
      GlobalVariableSet("audchf_down",1);      
      } 
   
   
   
      if(gbpaud_atrup>0&&gbpaud_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpaud_up",1);
      GlobalVariableSet("gbpaud_down",0);          
      }
      
      if(gbpaud_atrdown>0&&gbpaud_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpaud_up",0);
      GlobalVariableSet("gbpaud_down",1);      
      } 
   
   
   
      if(gbpusd_atrup>0&&gbpusd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpusd_up",1);
      GlobalVariableSet("gbpusd_down",0);          
      }
      
      if(gbpusd_atrdown>0&&gbpusd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpusd_up",0);
      GlobalVariableSet("gbpusd_down",1);      
      } 
   
   
   
      if(gbpjpy_atrup>0&&gbpjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpjpy_up",1);
      GlobalVariableSet("gbpjpy_down",0);          
      }
      
      if(gbpjpy_atrdown>0&&gbpjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpjpy_up",0);
      GlobalVariableSet("gbpjpy_down",1);      
      } 
   
   
   
      if(gbpnzd_atrup>0&&gbpnzd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpnzd_up",1);
      GlobalVariableSet("gbpnzd_down",0);          
      }
      
      if(gbpnzd_atrdown>0&&gbpnzd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpnzd_up",0);
      GlobalVariableSet("gbpnzd_down",1);      
      } 
   
   
   
      if(gbpcad_atrup>0&&gbpcad_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpcad_up",1);
      GlobalVariableSet("gbpcad_down",0);          
      }
      
      if(gbpcad_atrdown>0&&gbpcad_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpcad_up",0);
      GlobalVariableSet("gbpcad_down",1);      
      } 
   
   
   
      if(gbpchf_atrup>0&&gbpchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("gbpchf_up",1);
      GlobalVariableSet("gbpchf_down",0);          
      }
      
      if(gbpchf_atrdown>0&&gbpchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("gbpchf_up",0);
      GlobalVariableSet("gbpchf_down",1);      
      } 
   
   
  
      if(nzdusd_atrup>0&&nzdusd_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("nzdusd_up",1);
      GlobalVariableSet("nzdusd_down",0);          
      }
      
      if(nzdusd_atrdown>0&&nzdusd_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("nzdusd_up",0);
      GlobalVariableSet("nzdusd_down",1);      
      } 
   
   
   
      if(nzdjpy_atrup>0&&nzdjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("nzdjpy_up",1);
      GlobalVariableSet("nzdjpy_down",0);          
      }
      
      if(nzdjpy_atrdown>0&&nzdjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("nzdjpy_up",0);
      GlobalVariableSet("nzdjpy_down",1);      
      } 
  
   
   
      if(nzdcad_atrup>0&&nzdcad_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("nzdcad_up",1);
      GlobalVariableSet("nzdcad_down",0);          
      }
      
      if(nzdcad_atrdown>0&&nzdcad_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("nzdcad_up",0);
      GlobalVariableSet("nzdcad_down",1);      
      } 
   
   
   
      if(nzdchf_atrup>0&&nzdchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("nzdchf_up",1);
      GlobalVariableSet("nzdchf_down",0);          
      }
      
      if(nzdchf_atrdown>0&&nzdchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("nzdchf_up",0);
      GlobalVariableSet("nzdchf_down",1);      
      } 
   
   
   
      if(usdcad_atrup>0&&usdcad_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("usdcad_up",1);
      GlobalVariableSet("usdcad_down",0);          
      }
      
      if(usdcad_atrdown>0&&usdcad_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("usdcad_up",0);
      GlobalVariableSet("usdcad_down",1);      
      } 
   
   
   
      if(cadjpy_atrup>0&&cadjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("cadjpy_up",1);
      GlobalVariableSet("cadjpy_down",0);          
      }
      
      if(cadjpy_atrdown>0&&cadjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("cadjpy_up",0);
      GlobalVariableSet("cadjpy_down",1);      
      } 
   
   
   
      if(cadchf_atrup>0&&cadchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("cadchf_up",1);
      GlobalVariableSet("cadchf_down",0);          
      }
      
      if(cadchf_atrdown>0&&cadchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("cadchf_up",0);
      GlobalVariableSet("cadchf_down",1);      
      } 
   
   
   
      if(usdchf_atrup>0&&usdchf_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("usdchf_up",1);
      GlobalVariableSet("usdchf_down",0);          
      }
      
      if(usdchf_atrdown>0&&usdchf_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("usdchf_up",0);
      GlobalVariableSet("usdchf_down",1);      
      } 
   
   
   
      if(chfjpy_atrup>0&&chfjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("chfjpy_up",1);
      GlobalVariableSet("chfjpy_down",0);          
      }
      
      if(chfjpy_atrdown>0&&chfjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("chfjpy_up",0);
      GlobalVariableSet("chfjpy_down",1);      
      } 
   
   
    
      if(usdjpy_atrup>0&&usdjpy_atrup!=EMPTY_VALUE){   
      GlobalVariableSet("usdjpy_up",1);
      GlobalVariableSet("usdjpy_down",0);          
      }
      
      if(usdjpy_atrdown>0&&usdjpy_atrdown!=EMPTY_VALUE){  
      GlobalVariableSet("usdjpy_up",0);
      GlobalVariableSet("usdjpy_down",1);      
      } 
   
   
  }
//+------------------------------------------------------------------+
