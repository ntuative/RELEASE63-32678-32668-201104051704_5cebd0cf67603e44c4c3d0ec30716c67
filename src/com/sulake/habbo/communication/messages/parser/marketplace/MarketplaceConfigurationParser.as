package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1378:Boolean;
      
      private var var_2596:int;
      
      private var var_1883:int;
      
      private var var_1882:int;
      
      private var var_2597:int;
      
      private var var_2595:int;
      
      private var var_2594:int;
      
      private var var_2588:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1378;
      }
      
      public function get commission() : int
      {
         return this.var_2596;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1883;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1882;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2595;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2597;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2594;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2588;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1378 = param1.readBoolean();
         this.var_2596 = param1.readInteger();
         this.var_1883 = param1.readInteger();
         this.var_1882 = param1.readInteger();
         this.var_2595 = param1.readInteger();
         this.var_2597 = param1.readInteger();
         this.var_2594 = param1.readInteger();
         this.var_2588 = param1.readInteger();
         return true;
      }
   }
}
