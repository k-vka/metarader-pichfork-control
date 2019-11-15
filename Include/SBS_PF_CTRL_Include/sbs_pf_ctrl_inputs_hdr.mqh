//================== sbs_pf_ctrl_inputs_hdr.mqh ==============================/

extern string           pf_replace_data    = "------ Pitchfork Replace Button Data ------";
extern ENUM_BASE_CORNER corner_number        = 0;        //Chart corner
extern int              btn_x_first          = 500;      //X start coordinate on the chart
extern int              btn_y                = 2;        // Y coordinate on the chart
extern int              btn_size_x           = 21;       //Button size X
extern int              btn_size_y           = 16;       //Button size Y

extern string           txtFont              = "Arial";  //Font style
extern int              txtSize              = 8;        //Font size
extern color            txt_color            = clrWhite;

extern bool             show_MN1_btn_flag    = false;
extern bool             show_W1_btn_flag     = true;

extern bool             show_D1_btn_flag     = true;
extern bool             show_H4_btn_flag     = true;
extern bool             show_H1_btn_flag     = true;

extern bool             show_M30_btn_flag    = false;
extern bool             show_M15_btn_flag    = false;
extern bool             show_M5_btn_flag     = false;
extern bool             show_M1_btn_flag     = false;

//--- MN1 ---/

extern string           pf_MN1_data       = "------ MN1 Pitchfork Data ------";

extern color            pf_MN1_line_color = clrBlue;
extern ENUM_LINE_STYLE  pf_MN1_line_style = STYLE_SOLID;
extern int              pf_MN1_line_width = 1;

extern int              pf_MN1_level_number              = 0;
extern bool             pf_MN1_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_MN1_half_level_line_style     = STYLE_DASH;
extern int              pf_MN1_half_level_line_width     = 1;

//--- W1 ---/

extern string           pf_W1_data        = "------ W1 Pitchfork Data ------";

extern color            pf_W1_line_color  = clrLightSeaGreen;
extern ENUM_LINE_STYLE  pf_W1_line_style  = STYLE_SOLID;
extern int              pf_W1_line_width  = 1;

extern int              pf_W1_level_number              = 1;
extern bool             pf_W1_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_W1_half_level_line_style     = STYLE_DASH;
extern int              pf_W1_half_level_line_width     = 1;

//--- D1 ---/

extern string           pf_D1_data        = "------ D1 Pitchfork Data ------";

extern color            pf_D1_line_color  = clrTeal;
extern ENUM_LINE_STYLE  pf_D1_line_style  = STYLE_SOLID;
extern int              pf_D1_line_width  = 1;

extern int              pf_D1_level_number              = 1;
extern bool             pf_D1_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_D1_half_level_line_style     = STYLE_DASH;
extern int              pf_D1_half_level_line_width     = 1;

//--- H4 ---/

extern string           pf_H4_data        = "------ H4 Pitchfork Data ------";

extern color            pf_H4_line_color  = clrDarkViolet;
extern ENUM_LINE_STYLE  pf_H4_line_style  = STYLE_SOLID;
extern int              pf_H4_line_width  = 1;

extern int              pf_H4_level_number              = 1;
extern bool             pf_H4_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_H4_half_level_line_style     = STYLE_DASH;
extern int              pf_H4_half_level_line_width     = 1;

//--- H1 ---/

extern string           pf_H1_data        = "------ H1 Pitchfork Data ------";

extern color            pf_H1_line_color  = clrRoyalBlue;
extern ENUM_LINE_STYLE  pf_H1_line_style  = STYLE_SOLID;
extern int              pf_H1_line_width  = 1;

extern int              pf_H1_level_number              = 1;
extern bool             pf_H1_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_H1_half_level_line_style     = STYLE_DASH;
extern int              pf_H1_half_level_line_width     = 1;

//--- M30 ---/

extern string           pf_M30_data       = "------ M30 Pitchfork Data ------";

extern color            pf_M30_line_color = clrBlue;
extern ENUM_LINE_STYLE  pf_M30_line_style = STYLE_SOLID;
extern int              pf_M30_line_width = 1;

extern int              pf_M30_level_number              = 0;
extern bool             pf_M30_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_M30_half_level_line_style     = STYLE_DASH;
extern int              pf_M30_half_level_line_width     = 1;

//--- M15 ---/

extern string           pf_M15_data       = "------ M15 Pitchfork Data ------";

extern color            pf_M15_line_color = clrBlue;
extern ENUM_LINE_STYLE  pf_M15_line_style = STYLE_SOLID;
extern int              pf_M15_line_width = 1;

extern int              pf_M15_level_number              = 0;
extern bool             pf_M15_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_M15_half_level_line_style     = STYLE_DASH;
extern int              pf_M15_half_level_line_width     = 1;

//--- M5 ---/

extern string           pf_M5_data        = "------ M5 Pitchfork Data ------";

extern color            pf_M5_line_color  = clrBlue;
extern ENUM_LINE_STYLE  pf_M5_line_style  = STYLE_SOLID;
extern int              pf_M5_line_width  = 1;

extern int              pf_M5_level_number              = 0;
extern bool             pf_M5_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_M5_half_level_line_style     = STYLE_DASH;
extern int              pf_M5_half_level_line_width     = 1;

//--- M1 ---/

extern string           pf_M1_data        = "------ M1 Pitchfork Data ------";

extern color            pf_M1_line_color  = clrBlue;
extern ENUM_LINE_STYLE  pf_M1_line_style  = STYLE_SOLID;
extern int              pf_M1_line_width  = 1;

extern int              pf_M1_level_number              = 0;
extern bool             pf_M1_half_level_line_draw_flag = false;
extern ENUM_LINE_STYLE  pf_M1_half_level_line_style     = STYLE_DASH;
extern int              pf_M1_half_level_line_width     = 1;

//================== eof sbs_pf_ctrl_inputs_hdr.mqh =======================+++/