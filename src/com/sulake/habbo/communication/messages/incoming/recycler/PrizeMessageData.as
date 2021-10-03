package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_2123:String;
      
      private var var_2010:int;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2123 = param1.readString();
         this.var_2010 = param1.readInteger();
      }
      
      public function get productItemType() : String
      {
         return this.var_2123;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_2010;
      }
   }
}
