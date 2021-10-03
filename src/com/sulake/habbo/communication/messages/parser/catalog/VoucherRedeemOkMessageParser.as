package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_922:String = "";
      
      private var var_1141:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1141 = "";
         this.var_922 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1141 = param1.readString();
         this.var_922 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_922;
      }
      
      public function get productDescription() : String
      {
         return this.var_1141;
      }
   }
}
