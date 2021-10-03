package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   
   public class GetGuestRoomResultMessageParser implements IMessageParser
   {
       
      
      private var var_2523:Boolean;
      
      private var var_2525:Boolean;
      
      private var var_2524:Boolean;
      
      private var _data:GuestRoomData;
      
      public function GetGuestRoomResultMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2523 = param1.readBoolean();
         this._data = new GuestRoomData(param1);
         this.var_2525 = param1.readBoolean();
         this.var_2524 = param1.readBoolean();
         return true;
      }
      
      public function get enterRoom() : Boolean
      {
         return this.var_2523;
      }
      
      public function get data() : GuestRoomData
      {
         return this._data;
      }
      
      public function get roomForward() : Boolean
      {
         return this.var_2525;
      }
      
      public function get staffPick() : Boolean
      {
         return this.var_2524;
      }
   }
}
