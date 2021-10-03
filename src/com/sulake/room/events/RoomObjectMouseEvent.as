package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_132:String = "ROE_MOUSE_CLICK";
      
      public static const const_1988:String = "ROE_MOUSE_ENTER";
      
      public static const const_444:String = "ROE_MOUSE_MOVE";
      
      public static const const_1857:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1838:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1846:String = "";
      
      private var var_2147:Boolean;
      
      private var var_2146:Boolean;
      
      private var var_2144:Boolean;
      
      private var var_2145:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1846 = param2;
         this.var_2147 = param5;
         this.var_2146 = param6;
         this.var_2144 = param7;
         this.var_2145 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1846;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2147;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2146;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2144;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2145;
      }
   }
}
