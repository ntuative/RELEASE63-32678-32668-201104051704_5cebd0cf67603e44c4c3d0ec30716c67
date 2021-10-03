package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_655:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1096:String = "inventory_effects";
      
      public static const const_1112:String = "inventory_badges";
      
      public static const const_1477:String = "inventory_clothes";
      
      public static const const_1427:String = "inventory_furniture";
       
      
      private var var_2462:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_655);
         this.var_2462 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2462;
      }
   }
}
