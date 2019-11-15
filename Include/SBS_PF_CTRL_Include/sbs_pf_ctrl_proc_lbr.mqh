//================== sbs_pf_ctrl_proc_lbr.mqh ================================/

//================== SBS_FPCTRL_Replace_Selected_PFs =========================/

void SBS_FPCTRL_Replace_Selected_PFs(int replace_timeframe)
{
int      i;

int      objects_total_number;

string   object_name;

//-------------- Get Data ----------------------------------------------------/

//--- Get objects_total_number ---/

   objects_total_number = ObjectsTotal();
      
   if (objects_total_number <= 1)
   {
      return;
   }

//----------------------------------------------------------------------------/
//-------------- Process All Selected Objects --------------------------------/
//----------------------------------------------------------------------------/
   
   for (i = (objects_total_number - 1); i >= 0; i--)
   {
//--- Get object_name ---/

      object_name = "";

      object_name = ObjectName(i);

//--- Check For OBJ_PITCHFORK ---/

      if (
            !(
               (ObjectGetInteger(0,object_name,OBJPROP_TYPE) == OBJ_PITCHFORK) &&
               (ObjectGetInteger(0,object_name,OBJPROP_SELECTED) == True)
            )
         )
      {
         continue;
      }

//--- SBS_FPCTRL_Pitchfork_Levels_Delete ---/
            
      SBS_FPCTRL_Pitchfork_Levels_Delete(object_name);

//--- SBS_FPCTRL_Pitchfork_Levels_Process ---/
            
      SBS_FPCTRL_Pitchfork_Levels_Process(object_name,replace_timeframe);

   }     // for (i = (objects_total_number - 1); i >= 0; i--)
      
//----------------------------------------------------------------------------/

   return;
}

//================== SBS_FPCTRL_Pitchfork_Levels_Process =====================/

void SBS_FPCTRL_Pitchfork_Levels_Process(string object_name, int replace_timeframe, bool move_flag = false)
{
datetime object_time_1;
datetime object_time_2;
datetime object_time_3;

double   object_price_1;
double   object_price_2;
double   object_price_3;

string   current_pf_name;

color    current_pf_line_color;
ENUM_LINE_STYLE      current_pf_line_style;
int      current_pf_line_width;

int      current_pf_level_number;

bool     current_pf_half_level_line_draw_flag;
ENUM_LINE_STYLE      current_pf_half_level_line_style;
int      current_pf_half_level_line_width;

//-------------- Process object_name -----------------------------------------/

//--- Get object_time_X ---/

      object_time_1 = ObjectGet(object_name,OBJPROP_TIME1);
      object_time_2 = ObjectGet(object_name,OBJPROP_TIME2);
      object_time_3 = ObjectGet(object_name,OBJPROP_TIME3);

//--- Get object_price_X ---/

      object_price_1 = ObjectGet(object_name,OBJPROP_PRICE1);
      object_price_2 = ObjectGet(object_name,OBJPROP_PRICE2);
      object_price_3 = ObjectGet(object_name,OBJPROP_PRICE3);

//-------------- Create New Pitchfork ----------------------------------------/

//--- Set current_pf_name ---/

      current_pf_name = sbs_pitchfork_name_prefix + 
                        SBS_EXP_05_Get_TF_Name(replace_timeframe) + "_" + 
                        IntegerToString(TimeLocal());

//--- Set current_pf_line_color ---/
//--- Set current_pf_line_style ---/
//--- Set current_pf_line_width ---/
      
      switch(replace_timeframe)
      {
         case PERIOD_MN1:
         {
            current_pf_line_color = pf_MN1_line_color;
            current_pf_line_style = pf_MN1_line_style;
            current_pf_line_width = pf_MN1_line_width;
            
            current_pf_level_number = pf_MN1_level_number;
            
            current_pf_half_level_line_draw_flag = pf_MN1_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_MN1_half_level_line_style;
            current_pf_half_level_line_width     = pf_MN1_half_level_line_width;
            
            break;
         }
         
         case PERIOD_W1:
         {
            current_pf_line_color = pf_W1_line_color;
            current_pf_line_style = pf_W1_line_style;
            current_pf_line_width = pf_W1_line_width;
            
            current_pf_level_number = pf_W1_level_number;
            
            current_pf_half_level_line_draw_flag = pf_W1_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_W1_half_level_line_style;
            current_pf_half_level_line_width     = pf_W1_half_level_line_width;
            
            break;
         }
         
         case PERIOD_D1:
         {
            current_pf_line_color = pf_D1_line_color;
            current_pf_line_style = pf_D1_line_style;
            current_pf_line_width = pf_D1_line_width;
            
            current_pf_level_number = pf_D1_level_number;
            
            current_pf_half_level_line_draw_flag = pf_D1_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_D1_half_level_line_style;
            current_pf_half_level_line_width     = pf_D1_half_level_line_width;
            
            break;
         }
         
         case PERIOD_H4:
         {
            current_pf_line_color = pf_H4_line_color;
            current_pf_line_style = pf_H4_line_style;
            current_pf_line_width = pf_H4_line_width;
            
            current_pf_level_number = pf_H4_level_number;
            
            current_pf_half_level_line_draw_flag = pf_H4_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_H4_half_level_line_style;
            current_pf_half_level_line_width     = pf_H4_half_level_line_width;
            
            break;
         }
         
         case PERIOD_H1:
         {
            current_pf_line_color = pf_H1_line_color;
            current_pf_line_style = pf_H1_line_style;
            current_pf_line_width = pf_H1_line_width;
            
            current_pf_level_number = pf_H1_level_number;
            
            current_pf_half_level_line_draw_flag = pf_H1_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_H1_half_level_line_style;
            current_pf_half_level_line_width     = pf_H1_half_level_line_width;
            
            break;
         }
         
         case PERIOD_M30:
         {
            current_pf_line_color = pf_M30_line_color;
            current_pf_line_style = pf_M30_line_style;
            current_pf_line_width = pf_M30_line_width;
            
            current_pf_level_number = pf_M30_level_number;
            
            current_pf_half_level_line_draw_flag = pf_M30_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_M30_half_level_line_style;
            current_pf_half_level_line_width     = pf_M30_half_level_line_width;
            
            break;
         }
         
         case PERIOD_M15:
         {
            current_pf_line_color = pf_M15_line_color;
            current_pf_line_style = pf_M15_line_style;
            current_pf_line_width = pf_M15_line_width;
            
            current_pf_level_number = pf_M15_level_number;
            
            current_pf_half_level_line_draw_flag = pf_M15_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_M15_half_level_line_style;
            current_pf_half_level_line_width     = pf_M15_half_level_line_width;
            
            break;
         }
         
         case PERIOD_M5:
         {
            current_pf_line_color = pf_M5_line_color;
            current_pf_line_style = pf_M5_line_style;
            current_pf_line_width = pf_M5_line_width;
            
            current_pf_level_number = pf_M5_level_number;
            
            current_pf_half_level_line_draw_flag = pf_M5_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_M5_half_level_line_style;
            current_pf_half_level_line_width     = pf_M5_half_level_line_width;
            
            break;
         }
         
         case PERIOD_M1:
         {
            current_pf_line_color = pf_M1_line_color;
            current_pf_line_style = pf_M1_line_style;
            current_pf_line_width = pf_M1_line_width;
            
            current_pf_level_number = pf_M1_level_number;
            
            current_pf_half_level_line_draw_flag = pf_M1_half_level_line_draw_flag;
            current_pf_half_level_line_style     = pf_M1_half_level_line_style;
            current_pf_half_level_line_width     = pf_M1_half_level_line_width;
            
            break;
         }
         
         default:
         {
            return;
         }
      }

//------------------ PitchforkCreate -----------------------------------------/

      if (move_flag == false)
      {
         if (PitchforkCreate(
                  0,
                  current_pf_name,
                  0,
                  object_time_1,
                  object_price_1,
                  object_time_2,
                  object_price_2,
                  object_time_3,
                  object_price_3,
                  current_pf_line_color,
                  current_pf_line_style,
                  current_pf_line_width
                            ) == false)
         {
            return;
         }

//--- Delete object_name ---/

         ObjectDelete(0,object_name);

//--- Set PF Text ---/

         ObjectSetString(0,current_pf_name,OBJPROP_TEXT,"PF_" + SBS_EXP_05_Get_TF_Name(replace_timeframe));
      }
      else
      {
         current_pf_name = object_name;
      }

//------------------ SBS_FPCTRL_PitchforkLevelsSet ---------------------------/

      if (current_pf_level_number >= 0)
      {
         SBS_FPCTRL_PitchforkLevelsSet(0,
                                       current_pf_name,
                                       replace_timeframe,
                                       current_pf_level_number,
                                       current_pf_line_color,
                                       current_pf_line_style,
                                       current_pf_line_width,
                                       current_pf_half_level_line_draw_flag,
                                       current_pf_half_level_line_style,
                                       current_pf_half_level_line_width);
      }
      
//----------------------------------------------------------------------------/

   return;
}

//================== PitchforkCreate =========================================/

bool PitchforkCreate(const long            chart_ID=0,        // chart's ID
                     const string          name="Pitchfork",  // pitchfork name
                     const int             sub_window=0,      // subwindow index 
                     datetime              time1=0,           // first point time
                     double                price1=0,          // first point price
                     datetime              time2=0,           // second point time
                     double                price2=0,          // second point price
                     datetime              time3=0,           // third point time
                     double                price3=0,          // third point price
                     const color           clr=clrRed,        // color of pitchfork lines
                     const ENUM_LINE_STYLE style=STYLE_SOLID, // style of pitchfork lines
                     const int             width=1,           // width of pitchfork lines
                     const bool            back=true,        // in the background
                     const bool            selection=false,    // highlight to move
                     const bool            ray_left=false,    // pitchfork's continuation to the left
                     const bool            ray_right=true,   // pitchfork's continuation to the right
                     const bool            hidden=false,       // hidden in the object list
                     const long            z_order=0)         // priority for mouse click
{
//--- reset the error value
   ResetLastError();
//--- create Andrews' Pitchfork by the given coordinates
   if(!ObjectCreate(chart_ID,name,OBJ_PITCHFORK,sub_window,time1,price1,time2,price2,time3,price3))
     {
      Print(__FUNCTION__,
            ": failed to create \"Andrews' Pitchfork\"! Error code = ",GetLastError());
      return(false);
     }
//--- set color
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- set the line style
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- set width of the lines
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- display in the foreground (false) or background (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- enable (true) or disable (false) the mode of highlighting the pitchfork for moving
//--- when creating a graphical object using ObjectCreate function, the object cannot be
//--- highlighted and moved by default. Inside this method, selection parameter
//--- is true by default making it possible to highlight and move the object
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,true);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- enable (true) or disable (false) the mode of continuation of the pitchfork's display to the left
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_LEFT,ray_left);
//--- enable (true) or disable (false) the mode of continuation of the pitchfork's display to the right
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_RIGHT,ray_right);
//--- hide (true) or display (false) graphical object name in the object list
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- set the priority for receiving the event of a mouse click in the chart
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- successful execution
   return(true);
}

//================== SBS_FPCTRL_PitchforkLevelsSet ======================================/

void SBS_FPCTRL_PitchforkLevelsSet(long   chart_ID,
                                   string object_name,
                                   int    pf_timeframe,
                                   int    level_number,
                                   color  line_color,
                                   ENUM_LINE_STYLE line_style,
                                   int    line_width,
                                   bool   half_level_line_draw_flag,
                                   ENUM_LINE_STYLE half_level_line_style,
                                   int    half_level_line_width)
{
int      i;

double   current_level_val;

datetime object_time_1;
datetime object_time_2;
datetime object_time_3;

double   object_price_1;
double   object_price_2;
double   object_price_3;

int      object_bar_no_1;

datetime left_bar_dtime;
double   left_bar_no;
double   left_bar_val;

datetime right_bar_dtime;
double   right_bar_no;
double   right_bar_val;

double   middle_bar_no;
double   middle_bar_val;

double   right_bar_projection_val;

double   current_pf_level_size_val;

//------------------ Check Data ----------------------------------------------/

//--- Check level_number ---/

   if (level_number < 0)
   {
      return;
   }

//------------------ Set Data ------------------------------------------------/

//--- Get object_time_X ---/

   object_time_1 = ObjectGet(object_name,OBJPROP_TIME1);
   object_time_2 = ObjectGet(object_name,OBJPROP_TIME2);
   object_time_3 = ObjectGet(object_name,OBJPROP_TIME3);

//--- Get object_price_X ---/

   object_price_1 = ObjectGet(object_name,OBJPROP_PRICE1);
   object_price_2 = ObjectGet(object_name,OBJPROP_PRICE2);
   object_price_3 = ObjectGet(object_name,OBJPROP_PRICE3);

//--- Get left_bar_dtime ---/
//--- Get left_bar_val ---/

   if (object_time_2 <= object_time_3)
   {
      left_bar_dtime = object_time_2;
      left_bar_val   = object_price_2;
      
      right_bar_dtime = object_time_3;
      right_bar_val   = object_price_3;
   }
   else
   {
      left_bar_dtime = object_time_3;
      left_bar_val   = object_price_3;
      
      right_bar_dtime = object_time_2;
      right_bar_val   = object_price_2;
   }

//--- Get left_bar_no ---/

   left_bar_no = iBarShift(NULL,pf_timeframe,left_bar_dtime,false);
      
   if (left_bar_no == -1)
   {
      return;
   }

//--- Get right_bar_no ---/

   right_bar_no = iBarShift(NULL,pf_timeframe,right_bar_dtime,false);
      
   if (right_bar_no == -1)
   {
      return;
   }

//--- Check left_bar_no VS right_bar_no ---/
   
   if (left_bar_no <= right_bar_no)
   {
      return;
   }

//--- Get middle_bar_no ---/

   middle_bar_no = right_bar_no + (0.5 * (left_bar_no - right_bar_no));

//--- Check middle_bar_no VS right_bar_no ---/
   
   if (middle_bar_no <= right_bar_no)
   {
      return;
   }

//--- Get middle_bar_val ---/

   middle_bar_val = SBS_EXP_05_FCMTF_TL_Get_Shift_Bar_Val(left_bar_no,left_bar_val,
                                                          right_bar_no,right_bar_val,
                                                          middle_bar_no);

   if (middle_bar_val == 0.0)
   {
      return;
   }

//--- Get object_bar_no_1 ---/

   object_bar_no_1 = iBarShift(NULL,pf_timeframe,object_time_1,false);
      
   if (object_bar_no_1 == -1)
   {
      return;
   }

//--- Get right_bar_projection_val ---/

   right_bar_projection_val = SBS_EXP_05_FCMTF_TL_Get_Shift_Bar_Val(object_bar_no_1,object_price_1,
                                                                   middle_bar_no,middle_bar_val,
                                                                   right_bar_no);

   if (right_bar_projection_val == 0.0)
   {
      return;
   }

//--- Get current_pf_level_size_val ---/

   current_pf_level_size_val = MathAbs(right_bar_val - right_bar_projection_val);

//------------------ Process Data --------------------------------------------/

//--- Draw PF Levels ---/

   if (level_number > 0)
   {
      for (i = 0; i < level_number; i++)
      {
//--- Set current_level_val ---/

         current_level_val = i + 2;
      
         SBS_FPCTRL_Pitchfork_Level_Draw(object_name,pf_timeframe,current_level_val,current_pf_level_size_val,
                                      left_bar_no,left_bar_val,
                                      right_bar_no,right_bar_val,right_bar_projection_val,
                                      current_level_val,line_color,line_style,line_width);
      }
   }

//--- Set PF Half Level Properties ---/

   if (half_level_line_draw_flag == false)
   {
      return;
   }

   for (i = 0; i <= level_number; i++)
   {
//--- OBJPROP_LEVELVALUE ---/

      current_level_val = i + 1;
      current_level_val = current_level_val - 0.5;

      SBS_FPCTRL_Pitchfork_Level_Draw(object_name,pf_timeframe,current_level_val,current_pf_level_size_val,
                                      left_bar_no,left_bar_val,
                                      right_bar_no,right_bar_val,right_bar_projection_val,
                                      current_level_val,line_color,half_level_line_style,half_level_line_width);
   }
 
//----------------------------------------------------------------------------/

   return;
}

//================== SBS_FPCTRL_Pitchfork_Level_Draw =========================/

void SBS_FPCTRL_Pitchfork_Level_Draw(string object_name,
                                     int    pf_timeframe,
                                     double level_multiplier,
                                     double pf_level_size_val,
                                     int    left_bar_no,
                                     double left_bar_val,
                                     int    right_bar_no,
                                     double right_bar_val,
                                     double right_bar_projection_val,
                                     double level_val,
                                     color  line_color,
                                     ENUM_LINE_STYLE line_style,
                                     int    line_width)
{
string   current_trendline_object_name;
string   current_trendline_object_description;

double   current_trendline_price_1;
double   current_trendline_price_2;

datetime current_trendline_time_1;
datetime current_trendline_time_2;

//------------------ Draw Pitchfork Upper Level ------------------------------/

//--- current_trendline_object_name ---/

   current_trendline_object_name = object_name + "_U" + DoubleToString((level_multiplier * 100),1);

//--- current_trendline_object_description ---/

   current_trendline_object_description = "PF_" + SBS_EXP_05_Get_TF_Name(pf_timeframe)
                                        + "_+" + DoubleToString((level_multiplier * 100.0), 1);

   if (left_bar_val <= right_bar_val)
   {
//--- current_trendline_price_1 ---/

      current_trendline_price_1 = left_bar_val + (pf_level_size_val * (level_val + 1.0));

//--- current_trendline_price_2 ---/

      current_trendline_price_2 = right_bar_projection_val + (pf_level_size_val * level_val);
   }
   else
   {
//--- current_trendline_price_1 ---/

      current_trendline_price_1 = left_bar_val + (pf_level_size_val * (level_val - 1.0));

//--- current_trendline_price_2 ---/

      current_trendline_price_2 = right_bar_projection_val + (pf_level_size_val * level_val);
   }

//--- current_trendline_time_1 ---/

   current_trendline_time_1 = iTime(NULL,pf_timeframe,left_bar_no);
      
   if (current_trendline_time_1 == 0)
   {
      return;
   }

//--- current_trendline_time_2 ---/

   current_trendline_time_2 = iTime(NULL,pf_timeframe,right_bar_no);
      
   if (current_trendline_time_2 == 0)
   {
      return;
   }

//--- SBS_FPCTRL_Trendline_Draw ---/

   SBS_FPCTRL_Trendline_Draw(current_trendline_object_name,
                             current_trendline_time_1,
                             current_trendline_price_1,
                             current_trendline_time_2,
                             current_trendline_price_2,
                             line_color,
                             line_style,
                             line_width,
                             current_trendline_object_description);

//------------------ Draw Pitchfork Lower Level ------------------------------/

//--- current_trendline_object_name ---/

   current_trendline_object_name = object_name + "_L" + DoubleToString((level_multiplier * 100.0),1);

//--- current_trendline_object_description ---/

   current_trendline_object_description = "PF_" + SBS_EXP_05_Get_TF_Name(pf_timeframe)
                                        + "_-" + DoubleToString((level_multiplier * 100.0), 1);

   if (left_bar_val <= right_bar_val)
   {
//--- current_trendline_price_1 ---/

      current_trendline_price_1 = left_bar_val - (pf_level_size_val * (level_val - 1.0));

//--- current_trendline_price_2 ---/

      current_trendline_price_2 = right_bar_projection_val - (pf_level_size_val * level_val);
   }
   else
   {
//--- current_trendline_price_1 ---/

      current_trendline_price_1 = left_bar_val - (pf_level_size_val * (level_val + 1.0));

//--- current_trendline_price_2 ---/

      current_trendline_price_2 = right_bar_projection_val - (pf_level_size_val * level_val);
   }



//--- current_trendline_time_1 ---/

   current_trendline_time_1 = iTime(NULL,pf_timeframe,left_bar_no);
      
   if (current_trendline_time_1 == 0)
   {
      return;
   }

//--- current_trendline_time_2 ---/

   current_trendline_time_2 = iTime(NULL,pf_timeframe,right_bar_no);
      
   if (current_trendline_time_2 == 0)
   {
      return;
   }

//--- SBS_FPCTRL_Trendline_Draw ---/

   SBS_FPCTRL_Trendline_Draw(current_trendline_object_name,
                             current_trendline_time_1,
                             current_trendline_price_1,
                             current_trendline_time_2,
                             current_trendline_price_2,
                             line_color,
                             line_style,
                             line_width,
                             current_trendline_object_description);
                             
//----------------------------------------------------------------------------/

   return;
}

//================== SBS_EXP_05_FCMTF_TL_Get_Shift_Bar_Val ===================/

double SBS_EXP_05_FCMTF_TL_Get_Shift_Bar_Val(double left_bar_no, double left_bar_val,
                                             double right_bar_no,double right_bar_val,
                                             double shift_bar_no)
{
double   shift_bar_val;

double   double_left_bar_no;
double   double_right_bar_no;
double   double_shift_bar_no;

//--- Reset shift_bar_val ---/

   shift_bar_val = 0.0;

//--- Check left_bar_no VS right_bar_no ---/
   
   if (
         (left_bar_no <= right_bar_no)
      )
   {
      return(shift_bar_val);
   }
   
//--- Get double_left_bar_no, double_right_bar_no ---/
   
//   double_left_bar_no  = (left_bar_no - shift_bar_no);
//   double_right_bar_no = (right_bar_no - shift_bar_no);

   double_left_bar_no  = left_bar_no;
   double_right_bar_no = right_bar_no;
   double_shift_bar_no = shift_bar_no;

//--- Get shift_bar_val ---/

//   shift_bar_val = ((double_left_bar_no * right_bar_val) - (double_right_bar_no * left_bar_val)) / 
//                                                                  (double_left_bar_no - double_right_bar_no);

   shift_bar_val = (left_bar_val *  (double_shift_bar_no - double_right_bar_no) / (double_left_bar_no - double_right_bar_no))
                 + (right_bar_val * (double_left_bar_no - double_shift_bar_no) / (double_left_bar_no - double_right_bar_no));
   
//----------------------------------------------------------------------------/

   return(shift_bar_val);
}

//================== SBS_EXP_05_Get_TF_Name ==================================/

string SBS_EXP_05_Get_TF_Name(int check_timeframe)
{
string timeframe_name;

   timeframe_name = "ND";

   switch (check_timeframe)
   {
      case PERIOD_M1:   timeframe_name = "M1";     break;
      case PERIOD_M5:   timeframe_name = "M5";     break;
      case PERIOD_M15:  timeframe_name = "M15";    break;
      case PERIOD_M30:  timeframe_name = "M30";    break;
      case PERIOD_H1:   timeframe_name = "H1";     break;
      case PERIOD_H4:   timeframe_name = "H4";     break;
      case PERIOD_D1:   timeframe_name = "D1";     break;
      case PERIOD_W1:   timeframe_name = "W1";     break;
      case PERIOD_MN1:  timeframe_name = "MN1";    break;
      
      default:          timeframe_name = "ND";     break;
   }

//----------------------------------------------------------------------------/

   return(timeframe_name);
}

//================== SBS_FPCTRL_Trendline_Draw ===============================/

void SBS_FPCTRL_Trendline_Draw(string object_name,
                               datetime time1,
                               double   price1,
                               datetime time2,
                               double   price2,
                               color    line_color,
                               ENUM_LINE_STYLE line_style,
                               int      line_width,
                               string   line_description)
{
//------------------ Create Trend Line ---------------------------------------/
   
   ObjectCreate(object_name,OBJ_TREND,0,time1,price1,time2,price2);

   ObjectSetInteger(0,object_name,OBJPROP_COLOR,line_color);
   ObjectSetInteger(0,object_name,OBJPROP_STYLE,line_style);
   ObjectSetInteger(0,object_name,OBJPROP_WIDTH,line_width);

   ObjectSetInteger(0,object_name,OBJPROP_RAY_RIGHT,true);
   ObjectSetInteger(0,object_name,OBJPROP_RAY_LEFT,false);
   
   ObjectSetInteger(0,object_name,OBJPROP_BACK,true);
   
   ObjectSetString(0,object_name,OBJPROP_TEXT,line_description);

//----------------------------------------------------------------------------/

   return;
}

//================== SBS_FPCTRL_Pitchfork_Levels_Delete ======================/

void SBS_FPCTRL_Pitchfork_Levels_Delete(string pf_object_name)
{
int      i;

int      objects_total_number;

string   object_name;

//--- Get objects_total_number ---/

   objects_total_number = ObjectsTotal();
      
   if (objects_total_number <= 1)
   {
      return;
   }
   
   if (
         !(
            (StringSubstr(pf_object_name,0,StringLen(sbs_pitchfork_name_prefix)) == sbs_pitchfork_name_prefix)
         )
      )
   {
      return;
   }

//----------------------------------------------------------------------------/
//-------------- Delete All Linked OBJ_TREND ---------------------------------/
//----------------------------------------------------------------------------/

   for (i = (objects_total_number - 1); i >= 0; i--)
   {
//--- Get object_name ---/

      object_name = "";

      object_name = ObjectName(i);
   
//--- sbs_FCMTF_TL_state_3_name_prefix ---/
      
      if (
            (StringSubstr(object_name,0,StringLen(pf_object_name)) == pf_object_name) &&
            (ObjectGetInteger(0,object_name,OBJPROP_TYPE) == OBJ_TREND)
         )
      {
         ObjectDelete(object_name);
      }
   }

//----------------------------------------------------------------------------/

   return;
}

//================== SBS_FPCTRL_Move_Selected_PFs ============================/

void SBS_FPCTRL_Move_Selected_PFs(string pf_object_name)
{
int      current_pf_timeframe_profile;

//--- Check For sbs_pitchfork_name_prefix & OBJ_PITCHFORK ---/

   if (
         !(
            (StringSubstr(pf_object_name,0,StringLen(sbs_pitchfork_name_prefix)) == sbs_pitchfork_name_prefix) &&
            (ObjectGetInteger(0,pf_object_name,OBJPROP_TYPE) == OBJ_PITCHFORK)
         )
      )
   {
      return;
   }

//--- Get current_pf_timeframe_profile ---/

   current_pf_timeframe_profile = 0;
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("MN1_")) == "MN1_")
      )
   {
      current_pf_timeframe_profile = PERIOD_MN1;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("W1_")) == "W1_")
      )
   {
      current_pf_timeframe_profile = PERIOD_W1;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("D1_")) == "D1_")
      )
   {
      current_pf_timeframe_profile = PERIOD_D1;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("H4_")) == "H4_")
      )
   {
      current_pf_timeframe_profile = PERIOD_H4;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("H1_")) == "H1_")
      )
   {
      current_pf_timeframe_profile = PERIOD_H1;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("M30_")) == "M30_")
      )
   {
      current_pf_timeframe_profile = PERIOD_M30;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("M15_")) == "M15_")
      )
   {
      current_pf_timeframe_profile = PERIOD_M15;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("M5_")) == "M5_")
      )
   {
      current_pf_timeframe_profile = PERIOD_M5;
   }
   
   if (
         (current_pf_timeframe_profile == 0) &&
         (StringSubstr(pf_object_name,StringLen(sbs_pitchfork_name_prefix),StringLen("M1_")) == "M1_")
      )
   {
      current_pf_timeframe_profile = PERIOD_M1;
   }
   
   if (current_pf_timeframe_profile == 0)
   {
      return;
   }

//--- SBS_FPCTRL_Pitchfork_Levels_Delete ---/
            
   SBS_FPCTRL_Pitchfork_Levels_Delete(pf_object_name);

//--- SBS_FPCTRL_Pitchfork_Levels_Process ---/
            
   SBS_FPCTRL_Pitchfork_Levels_Process(pf_object_name,current_pf_timeframe_profile,true);
   
   ObjectSetInteger(0,pf_object_name,OBJPROP_SELECTED,false);
      
//----------------------------------------------------------------------------/

   return;
}

//================== eof sbs_pf_ctrl_proc_lbr.mqh ============================/