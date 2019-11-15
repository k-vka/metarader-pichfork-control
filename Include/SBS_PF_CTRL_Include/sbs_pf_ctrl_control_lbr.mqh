//================== sbs_ctrl_control_lbr.mqh ================================/

//================== SBS_PFCTRL_Init_Control =================================/

void SBS_PFCTRL_Init_Control()
{
int      current_button_index_no;

//--- Init current_button_index_no ---/

   current_button_index_no = 0;

//--- sbs_MN1_button_name ---/

   if (show_MN1_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_MN1_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_MN1),
                   txtFont,txtSize,txt_color,
                   pf_MN1_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_MN1_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_MN1) +
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_W1_button_name ---/

   if (show_W1_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_W1_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_W1),
                   txtFont,txtSize,txt_color,
                   pf_W1_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_W1_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_W1) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_D1_button_name ---/

   if (show_D1_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_D1_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_D1),
                   txtFont,txtSize,txt_color,
                   pf_D1_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_D1_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_D1) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }
   
//--- sbs_H4_button_name ---/

   if (show_H4_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_H4_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_H4),
                   txtFont,txtSize,txt_color,
                   pf_H4_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_H4_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_H4) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }
   
//--- sbs_H1_button_name ---/

   if (show_H1_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_H1_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_H1),
                   txtFont,txtSize,txt_color,
                   pf_H1_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_H1_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_H1) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_M30_button_name ---/

   if (show_M30_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_M30_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_M30),
                   txtFont,txtSize,txt_color,
                   pf_M30_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_M30_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_M30) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_M15_button_name ---/

   if (show_M15_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_M15_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_M15),
                   txtFont,txtSize,txt_color,
                   pf_M15_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_M15_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_M15) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_M5_button_name ---/

   if (show_M5_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_M5_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_M5),
                   txtFont,txtSize,txt_color,
                   pf_M5_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_M5_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_M5) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }

//--- sbs_M1_button_name ---/

   if (show_M1_btn_flag == true)
   {
      ButtonCreate(0,
                   sbs_M1_button_name,
                   0,btn_x_first + (current_button_index_no * btn_size_x),btn_y,btn_size_x,btn_size_y,corner_number,
                   SBS_EXP_05_Get_TF_Name(PERIOD_M1),
                   txtFont,txtSize,txt_color,
                   pf_M1_line_color,
                   clrBlack,false,false,false,false,0);
   
      ObjectSetString(0,
                      sbs_M1_button_name,
                      OBJPROP_TOOLTIP,"PF " + 
                      SBS_EXP_05_Get_TF_Name(PERIOD_M1) + 
                      " Replace");
      
      current_button_index_no = current_button_index_no + 1;
   }
      
//----------------------------------------------------------------------------/

   return;
}

//================== SBS_PFCTRL_Deinit_Control ===============================/

void SBS_PFCTRL_Deinit_Control()
{
//--- Delete Button Objects ---/

   ObjectDelete(sbs_MN1_button_name);
   ObjectDelete(sbs_W1_button_name);
   ObjectDelete(sbs_D1_button_name);
   ObjectDelete(sbs_H4_button_name);
   ObjectDelete(sbs_H1_button_name);
   ObjectDelete(sbs_M30_button_name);
   ObjectDelete(sbs_M15_button_name);
   ObjectDelete(sbs_M5_button_name);
   ObjectDelete(sbs_M1_button_name);
      
//----------------------------------------------------------------------------/

   return;
}

//================== ButtonCreate ============================================/

bool ButtonCreate(const long              chart_ID=0,               // chart's ID
                  const string            name="Button",            // button name
                  const int               sub_window=0,             // subwindow index
                  const int               xx=0,                      // X coordinate
                  const int               yy=0,                      // Y coordinate
                  const int               width=50,                 // button width
                  const int               height=18,                // button height
                  const ENUM_BASE_CORNER  cornerr=CORNER_LEFT_UPPER,// chart corner for anchoring
                  const string            text="Button",            // text
                  const string            font="Arial",             // font
                  const int               font_size=10,             // font size
                  const color             clr=clrBlack,             // text color
                  const color             back_clr=C'236,233,216',  // background color
                  const color             border_clr=clrNONE,       // border color
                  const bool              state=false,              // pressed/released
                  const bool              back=false,               // in the background
                  const bool              selection=false,          // highlight to move
                  const bool              hidden=true,              // hidden in the object list
                  const long              z_order=0)                // priority for mouse click
{
//--- reset the error value 

   ResetLastError();
   
//--- create the button
   if(ObjectFind(chart_ID,name)<0)
     {
      if(!ObjectCreate(chart_ID,name,OBJ_BUTTON,sub_window,0,0))
        {
         Print(__FUNCTION__,
               ": failed to create the button! Error code = ",GetLastError());
         return(false);
        }
      //--- set button coordinates
      ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,xx);
      ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,yy);
      //--- set button size
      ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width);
      ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height);
      //--- set the chart's corner, relative to which point coordinates are defined
      ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,cornerr);
      //--- set the text
      ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
      //--- set text font
      ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
      //--- set font size
      ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
      //--- set text color
      ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      //--- set background color
      ObjectSetInteger(chart_ID,name,OBJPROP_BGCOLOR,back_clr);
      //--- set border color
      ObjectSetInteger(chart_ID,name,OBJPROP_BORDER_COLOR,border_clr);
      //--- display in the foreground (false) or background (true)
      ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      //--- set button state
      ObjectSetInteger(chart_ID,name,OBJPROP_STATE,state);
      //--- enable (true) or disable (false) the mode of moving the button by mouse
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
      ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      //--- hide (true) or display (false) graphical object name in the object list
      ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      //--- set the priority for receiving the event of a mouse click in the chart
      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
      //--- successful execution
     }

//----------------------------------------------------------------------------/

   return(true);
}

//================== OnChartEvent ============================================/

void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
{
//------------------ CHARTEVENT_OBJECT_CLICK ---------------------------------/

   if (id == CHARTEVENT_OBJECT_CLICK)
   {

//--- sbs_MN1_button_name ---/

      if (sparam == sbs_MN1_button_name)
      {
         ObjectSetInteger(0,sbs_MN1_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_MN1);
         
         return;
      }

//--- sbs_W1_button_name ---/

      if (sparam == sbs_W1_button_name)
      {
         ObjectSetInteger(0,sbs_W1_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_W1);
         
         return;
      }

//--- sbs_D1_button_name ---/

      if (sparam == sbs_D1_button_name)
      {
         ObjectSetInteger(0,sbs_D1_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_D1);
         
         return;
      }
      
//--- sbs_H4_button_name ---/

      if (sparam == sbs_H4_button_name)
      {
         ObjectSetInteger(0,sbs_H4_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_H4);
         
         return;
      }
      
//--- sbs_H1_button_name ---/

      if (sparam == sbs_H1_button_name)
      {
         ObjectSetInteger(0,sbs_H1_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_H1);
         
         return;
      }

//--- sbs_M30_button_name ---/

      if (sparam == sbs_M30_button_name)
      {
         ObjectSetInteger(0,sbs_M30_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_M30);
         
         return;
      }

//--- sbs_M15_button_name ---/

      if (sparam == sbs_M15_button_name)
      {
         ObjectSetInteger(0,sbs_M15_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_M15);
         
         return;
      }

//--- sbs_M5_button_name ---/

      if (sparam == sbs_M5_button_name)
      {
         ObjectSetInteger(0,sbs_M5_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_M5);
         
         return;
      }

//--- sbs_M1_button_name ---/

      if (sparam == sbs_M1_button_name)
      {
         ObjectSetInteger(0,sbs_M1_button_name,OBJPROP_STATE,False);
         
         SBS_FPCTRL_Replace_Selected_PFs(PERIOD_M1);
         
         return;
      }
   }

//------------------ CHARTEVENT_OBJECT_DRAG ----------------------------------/
   
   if (id == CHARTEVENT_OBJECT_DRAG)
   {
      SBS_FPCTRL_Move_Selected_PFs(sparam);
      
      return;
   }

//------------------ CHARTEVENT_OBJECT_DELETE --------------------------------/
   
   if (id == CHARTEVENT_OBJECT_DELETE)
   {
      SBS_FPCTRL_Pitchfork_Levels_Delete(sparam);
      
      return;
   }

//----------------------------------------------------------------------------/

   return;
   
}

//================== eof sbs_ctrl_control_lbr.mqh ============================/