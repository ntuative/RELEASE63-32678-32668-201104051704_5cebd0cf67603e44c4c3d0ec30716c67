package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_383:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1035:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1181:String = "RWOCM_PIXELS";
      
      public static const const_1205:String = "RWOCM_CREDITS";
       
      
      private var var_2544:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_383);
         this.var_2544 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2544;
      }
   }
}
