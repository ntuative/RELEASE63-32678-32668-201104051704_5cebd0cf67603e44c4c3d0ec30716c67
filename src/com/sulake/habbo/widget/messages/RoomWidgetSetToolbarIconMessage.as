package com.sulake.habbo.widget.messages
{
   import flash.display.BitmapData;
   
   public class RoomWidgetSetToolbarIconMessage extends RoomWidgetMessage
   {
      
      public static const const_1129:String = "RWCM_MESSAGE_SET_TOOLBAR_ICON";
      
      public static const const_1544:String = "me_menu";
       
      
      private var var_2267:String;
      
      private var _icon:BitmapData;
      
      public function RoomWidgetSetToolbarIconMessage(param1:String, param2:BitmapData)
      {
         super(const_1129);
         this.var_2267 = param1;
         this._icon = param2;
      }
      
      public function get widgetType() : String
      {
         return this.var_2267;
      }
      
      public function get icon() : BitmapData
      {
         return this._icon;
      }
   }
}
