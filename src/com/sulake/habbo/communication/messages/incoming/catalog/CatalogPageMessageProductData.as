package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_75:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_177:String = "e";
       
      
      private var var_1561:String;
      
      private var var_2675:int;
      
      private var var_1563:String;
      
      private var var_1562:int;
      
      private var var_2019:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1561 = param1.readString();
         this.var_2675 = param1.readInteger();
         this.var_1563 = param1.readString();
         this.var_1562 = param1.readInteger();
         this.var_2019 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1561;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2675;
      }
      
      public function get extraParam() : String
      {
         return this.var_1563;
      }
      
      public function get productCount() : int
      {
         return this.var_1562;
      }
      
      public function get expiration() : int
      {
         return this.var_2019;
      }
   }
}
