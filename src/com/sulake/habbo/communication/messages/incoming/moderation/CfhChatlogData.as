package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1677:int;
      
      private var var_2247:int;
      
      private var var_1469:int;
      
      private var var_2246:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1677 = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this.var_1469 = param1.readInteger();
         this.var_2246 = param1.readInteger();
         this.var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1677);
      }
      
      public function get callId() : int
      {
         return this.var_1677;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2247;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1469;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2246;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_113;
      }
   }
}
