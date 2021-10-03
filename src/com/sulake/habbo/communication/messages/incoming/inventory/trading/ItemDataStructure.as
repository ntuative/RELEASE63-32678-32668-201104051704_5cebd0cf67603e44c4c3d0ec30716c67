package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2541:int;
      
      private var var_1380:String;
      
      private var var_2643:int;
      
      private var var_2641:int;
      
      private var _category:int;
      
      private var var_2103:String;
      
      private var var_1534:int;
      
      private var var_2638:int;
      
      private var var_2639:int;
      
      private var var_2642:int;
      
      private var var_2637:int;
      
      private var var_2640:Boolean;
      
      private var var_2944:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2541 = param1;
         this.var_1380 = param2;
         this.var_2643 = param3;
         this.var_2641 = param4;
         this._category = param5;
         this.var_2103 = param6;
         this.var_1534 = param7;
         this.var_2638 = param8;
         this.var_2639 = param9;
         this.var_2642 = param10;
         this.var_2637 = param11;
         this.var_2640 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2541;
      }
      
      public function get itemType() : String
      {
         return this.var_1380;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2643;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2641;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2103;
      }
      
      public function get extra() : int
      {
         return this.var_1534;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2638;
      }
      
      public function get creationDay() : int
      {
         return this.var_2639;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2642;
      }
      
      public function get creationYear() : int
      {
         return this.var_2637;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2640;
      }
      
      public function get songID() : int
      {
         return this.var_1534;
      }
   }
}
