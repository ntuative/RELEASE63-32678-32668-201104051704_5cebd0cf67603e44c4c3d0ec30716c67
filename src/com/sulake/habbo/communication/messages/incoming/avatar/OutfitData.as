package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1676:int;
      
      private var var_2153:String;
      
      private var var_899:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1676 = param1.readInteger();
         this.var_2153 = param1.readString();
         this.var_899 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1676;
      }
      
      public function get figureString() : String
      {
         return this.var_2153;
      }
      
      public function get gender() : String
      {
         return this.var_899;
      }
   }
}
