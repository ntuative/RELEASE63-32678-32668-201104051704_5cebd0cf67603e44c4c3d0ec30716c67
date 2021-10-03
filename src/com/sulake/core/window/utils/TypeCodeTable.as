package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_844;
         param1["bitmap"] = const_769;
         param1["border"] = const_903;
         param1["border_notify"] = const_1654;
         param1["button"] = const_541;
         param1["button_thick"] = const_700;
         param1["button_icon"] = const_1453;
         param1["button_group_left"] = const_788;
         param1["button_group_center"] = const_648;
         param1["button_group_right"] = const_688;
         param1["canvas"] = const_913;
         param1["checkbox"] = const_908;
         param1["closebutton"] = const_1165;
         param1["container"] = const_417;
         param1["container_button"] = const_858;
         param1["display_object_wrapper"] = const_651;
         param1["dropmenu"] = const_545;
         param1["dropmenu_item"] = const_534;
         param1["frame"] = const_377;
         param1["frame_notify"] = const_1626;
         param1["header"] = const_847;
         param1["html"] = const_1050;
         param1["icon"] = const_1125;
         param1["itemgrid"] = const_1031;
         param1["itemgrid_horizontal"] = const_573;
         param1["itemgrid_vertical"] = const_753;
         param1["itemlist"] = const_1109;
         param1["itemlist_horizontal"] = const_422;
         param1["itemlist_vertical"] = const_380;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1460;
         param1["menu"] = const_1511;
         param1["menu_item"] = const_1534;
         param1["submenu"] = const_1234;
         param1["minimizebox"] = const_1437;
         param1["notify"] = const_1652;
         param1["null"] = const_867;
         param1["password"] = const_904;
         param1["radiobutton"] = const_804;
         param1["region"] = const_552;
         param1["restorebox"] = const_1606;
         param1["scaler"] = const_559;
         param1["scaler_horizontal"] = const_1580;
         param1["scaler_vertical"] = const_1519;
         param1["scrollbar_horizontal"] = const_446;
         param1["scrollbar_vertical"] = const_755;
         param1["scrollbar_slider_button_up"] = const_1183;
         param1["scrollbar_slider_button_down"] = const_1190;
         param1["scrollbar_slider_button_left"] = const_1117;
         param1["scrollbar_slider_button_right"] = const_1132;
         param1["scrollbar_slider_bar_horizontal"] = const_1018;
         param1["scrollbar_slider_bar_vertical"] = const_1219;
         param1["scrollbar_slider_track_horizontal"] = const_1148;
         param1["scrollbar_slider_track_vertical"] = const_1223;
         param1["scrollable_itemlist"] = const_1474;
         param1["scrollable_itemlist_vertical"] = const_517;
         param1["scrollable_itemlist_horizontal"] = const_1060;
         param1["selector"] = const_921;
         param1["selector_list"] = const_736;
         param1["submenu"] = const_1234;
         param1["tab_button"] = const_500;
         param1["tab_container_button"] = const_1055;
         param1["tab_context"] = const_490;
         param1["tab_content"] = const_1160;
         param1["tab_selector"] = const_698;
         param1["text"] = const_482;
         param1["input"] = const_893;
         param1["toolbar"] = const_1473;
         param1["tooltip"] = const_426;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
