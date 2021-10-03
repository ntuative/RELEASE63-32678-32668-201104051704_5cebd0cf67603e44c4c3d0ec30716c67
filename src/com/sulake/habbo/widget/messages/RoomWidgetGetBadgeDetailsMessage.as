package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_794:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1379:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_794);
         this.var_1379 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1379;
      }
   }
}
