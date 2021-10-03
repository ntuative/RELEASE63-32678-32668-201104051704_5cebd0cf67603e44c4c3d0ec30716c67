package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1378:Boolean = false;
      
      private var var_1778:int;
      
      private var var_1620:Array;
      
      private var var_710:Array;
      
      private var var_711:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1378 = _loc2_.isWrappingEnabled;
         this.var_1778 = _loc2_.wrappingPrice;
         this.var_1620 = _loc2_.stuffTypes;
         this.var_710 = _loc2_.boxTypes;
         this.var_711 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1378;
      }
      
      public function get price() : int
      {
         return this.var_1778;
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
   }
}
