package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_918:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_712:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_878:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_828:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_828 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_828;
      }
   }
}
