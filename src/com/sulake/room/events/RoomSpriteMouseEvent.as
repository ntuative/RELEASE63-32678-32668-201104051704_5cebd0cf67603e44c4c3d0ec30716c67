package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1846:String = "";
      
      private var var_2034:String = "";
      
      private var var_2348:String = "";
      
      private var var_2815:Number = 0;
      
      private var var_2814:Number = 0;
      
      private var var_2692:Number = 0;
      
      private var var_2693:Number = 0;
      
      private var var_2146:Boolean = false;
      
      private var var_2147:Boolean = false;
      
      private var var_2144:Boolean = false;
      
      private var var_2145:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1846 = param2;
         this.var_2034 = param3;
         this.var_2348 = param4;
         this.var_2815 = param5;
         this.var_2814 = param6;
         this.var_2692 = param7;
         this.var_2693 = param8;
         this.var_2146 = param9;
         this.var_2147 = param10;
         this.var_2144 = param11;
         this.var_2145 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1846;
      }
      
      public function get canvasId() : String
      {
         return this.var_2034;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2348;
      }
      
      public function get screenX() : Number
      {
         return this.var_2815;
      }
      
      public function get screenY() : Number
      {
         return this.var_2814;
      }
      
      public function get localX() : Number
      {
         return this.var_2692;
      }
      
      public function get localY() : Number
      {
         return this.var_2693;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2146;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2147;
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
