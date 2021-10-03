package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2627:Boolean;
      
      private var var_2626:int;
      
      private var var_1620:Array;
      
      private var var_710:Array;
      
      private var var_711:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2627;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2626;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1620;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_710;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_711;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1620 = [];
         this.var_710 = [];
         this.var_711 = [];
         this.var_2627 = param1.readBoolean();
         this.var_2626 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1620.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_710.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_711.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
