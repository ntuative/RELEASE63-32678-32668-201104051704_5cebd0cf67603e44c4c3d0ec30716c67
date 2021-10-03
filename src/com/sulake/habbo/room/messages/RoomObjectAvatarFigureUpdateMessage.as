package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_596:String;
      
      private var var_2480:String;
      
      private var var_899:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_596 = param1;
         this.var_899 = param2;
         this.var_2480 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function get race() : String
      {
         return this.var_2480;
      }
      
      public function get gender() : String
      {
         return this.var_899;
      }
   }
}
