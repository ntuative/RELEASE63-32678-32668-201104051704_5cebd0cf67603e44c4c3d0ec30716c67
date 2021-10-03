package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarGestureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1543:int = 0;
      
      public function RoomObjectAvatarGestureUpdateMessage(param1:int)
      {
         super();
         this.var_1543 = param1;
      }
      
      public function get gesture() : int
      {
         return this.var_1543;
      }
   }
}
