package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1720:Boolean;
      
      private var var_2317:int;
      
      private var var_457:Boolean;
      
      private var var_1121:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1720;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2317;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1121;
      }
      
      public function get owner() : Boolean
      {
         return this.var_457;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1121 != null)
         {
            this.var_1121.dispose();
            this.var_1121 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1720 = param1.readBoolean();
         if(this.var_1720)
         {
            this.var_2317 = param1.readInteger();
            this.var_457 = param1.readBoolean();
         }
         else
         {
            this.var_1121 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
