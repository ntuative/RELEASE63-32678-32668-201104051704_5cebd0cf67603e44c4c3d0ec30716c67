package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPetGestureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1543:String;
      
      public function RoomObjectAvatarPetGestureUpdateMessage(param1:String)
      {
         super();
         this.var_1543 = param1;
      }
      
      public function get gesture() : String
      {
         return this.var_1543;
      }
   }
}
