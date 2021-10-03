package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_102;
         param1["child_window"] = const_1177;
         param1["embedded_controller"] = const_1172;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_740;
         param1["mouse_dragging_target"] = const_252;
         param1["mouse_dragging_trigger"] = const_420;
         param1["mouse_scaling_target"] = const_313;
         param1["mouse_scaling_trigger"] = const_519;
         param1["horizontal_mouse_scaling_trigger"] = const_283;
         param1["vertical_mouse_scaling_trigger"] = const_257;
         param1["observe_parent_input_events"] = const_1022;
         param1["optimize_region_to_layout_size"] = const_485;
         param1["parent_window"] = const_1023;
         param1["relative_horizontal_scale_center"] = const_201;
         param1["relative_horizontal_scale_fixed"] = const_149;
         param1["relative_horizontal_scale_move"] = const_424;
         param1["relative_horizontal_scale_strech"] = const_376;
         param1["relative_scale_center"] = const_1146;
         param1["relative_scale_fixed"] = const_884;
         param1["relative_scale_move"] = const_1221;
         param1["relative_scale_strech"] = const_1198;
         param1["relative_vertical_scale_center"] = const_193;
         param1["relative_vertical_scale_fixed"] = const_131;
         param1["relative_vertical_scale_move"] = const_274;
         param1["relative_vertical_scale_strech"] = const_287;
         param1["on_resize_align_left"] = const_739;
         param1["on_resize_align_right"] = const_496;
         param1["on_resize_align_center"] = const_595;
         param1["on_resize_align_top"] = const_763;
         param1["on_resize_align_bottom"] = const_536;
         param1["on_resize_align_middle"] = const_537;
         param1["on_accommodate_align_left"] = const_1213;
         param1["on_accommodate_align_right"] = const_516;
         param1["on_accommodate_align_center"] = const_713;
         param1["on_accommodate_align_top"] = const_1138;
         param1["on_accommodate_align_bottom"] = const_451;
         param1["on_accommodate_align_middle"] = const_701;
         param1["route_input_events_to_parent"] = const_571;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1123;
         param1["scalable_with_mouse"] = const_1100;
         param1["reflect_horizontal_resize_to_parent"] = const_514;
         param1["reflect_vertical_resize_to_parent"] = const_582;
         param1["reflect_resize_to_parent"] = const_340;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1224;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
