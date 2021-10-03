package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2211:int;
      
      private var var_2214:int;
      
      private var var_2212:int;
      
      private var _dayOffsets:Array;
      
      private var var_1807:Array;
      
      private var var_1806:Array;
      
      private var var_2210:int;
      
      private var var_2213:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2211;
      }
      
      public function get offerCount() : int
      {
         return this.var_2214;
      }
      
      public function get historyLength() : int
      {
         return this.var_2212;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1807;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1806;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2210;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2213;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2211 = param1.readInteger();
         this.var_2214 = param1.readInteger();
         this.var_2212 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1807 = [];
         this.var_1806 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1807.push(param1.readInteger());
            this.var_1806.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2213 = param1.readInteger();
         this.var_2210 = param1.readInteger();
         return true;
      }
   }
}
