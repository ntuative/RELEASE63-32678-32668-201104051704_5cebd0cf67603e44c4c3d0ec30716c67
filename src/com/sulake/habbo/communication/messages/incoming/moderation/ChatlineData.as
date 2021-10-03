package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2845:int;
      
      private var var_2846:int;
      
      private var var_2847:int;
      
      private var var_2848:String;
      
      private var var_1596:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2845 = param1.readInteger();
         this.var_2846 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         this.var_2848 = param1.readString();
         this.var_1596 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2845;
      }
      
      public function get minute() : int
      {
         return this.var_2846;
      }
      
      public function get chatterId() : int
      {
         return this.var_2847;
      }
      
      public function get chatterName() : String
      {
         return this.var_2848;
      }
      
      public function get msg() : String
      {
         return this.var_1596;
      }
   }
}
