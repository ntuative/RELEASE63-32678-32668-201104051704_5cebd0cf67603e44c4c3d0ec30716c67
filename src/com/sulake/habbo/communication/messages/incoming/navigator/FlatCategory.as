package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1889:int;
      
      private var var_2765:String;
      
      private var var_318:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1889 = param1.readInteger();
         this.var_2765 = param1.readString();
         this.var_318 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1889;
      }
      
      public function get nodeName() : String
      {
         return this.var_2765;
      }
      
      public function get visible() : Boolean
      {
         return this.var_318;
      }
   }
}
