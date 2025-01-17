//================== SBS_FIBO_CONTROL.mq4 ====================================/

//================== Declarations ============================================/

//+------------------------------------------------------------------+
//|                                             SBS_FIBO_CONTROL.mq4 |
//|                                  Copyright 2019 github.com/k-vka |
//+------------------------------------------------------------------+
#property copyright "github.com/k-vka"
#property link      "https://github.com/k-vka"

#property indicator_chart_window

#define INDICATOR_NAME "SBS_PFCTRL"
#define INDICATOR_VERSION "1.0"

//------------------ Include Headers -----------------------------------------/

#include <SBS_PF_CTRL_Include\sbs_pf_ctrl_declarations_hdr.mqh>
#include <SBS_PF_CTRL_Include\sbs_pf_ctrl_inputs_hdr.mqh>

//----------------------------------------------------------------------------/

//================== Init ====================================================/

int init()
{
//------------------ SBS_PFCTRL_Init_Data ------------------------------------/

   SBS_PFCTRL_Deinit_Data();
   SBS_PFCTRL_Init_Data();

//------------------ SBS_PFCTRL_Init_Control ---------------------------------/

   SBS_PFCTRL_Deinit_Control();
   SBS_PFCTRL_Init_Control();
   
   ChartGetInteger(0,CHART_EVENT_OBJECT_DELETE,0,sbs_pre_CHART_EVENT_OBJECT_DELETE_val);
   ChartSetInteger(0,CHART_EVENT_OBJECT_DELETE,true);
   
//----------------------------------------------------------------------------/

   return(0);
}

//================== Deinit ==================================================/

int deinit() 
{
   ChartSetInteger(0,CHART_EVENT_OBJECT_DELETE,false);
   
//------------------ SBS_PFCTRL_Deinit_Control -------------------------------/

   SBS_PFCTRL_Deinit_Control();
   
//------------------ SBS_FBCTRL_Deinit_Data ----------------------------------/
   
   SBS_PFCTRL_Deinit_Data();
   
//----------------------------------------------------------------------------/

   Comment("");
   
   return(0);
}

//================== Start ===================================================/

int start() 
{
//----------------------------------------------------------------------------/
  
  return(0);
}

//------------------ Include Libraries ---------------------------------------/

#include <SBS_PF_CTRL_Include\sbs_pf_ctrl_init_lbr.mqh>
#include <SBS_PF_CTRL_Include\sbs_pf_ctrl_proc_lbr.mqh>
#include <SBS_PF_CTRL_Include\sbs_pf_ctrl_control_lbr.mqh>

//================== eof SBS_FIBO_CONTROL.mq4 ================================/