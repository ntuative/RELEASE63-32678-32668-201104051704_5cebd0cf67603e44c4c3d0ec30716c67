package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2427:int;
      
      private var var_2103:String;
      
      private var var_1778:int;
      
      private var var_407:int;
      
      private var var_2429:int = -1;
      
      private var var_2211:int;
      
      private var var_1777:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2427 = param3;
         this.var_2103 = param4;
         this.var_1778 = param5;
         this.var_407 = param6;
         this.var_2429 = param7;
         this.var_2211 = param8;
         this.var_1777 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2427;
      }
      
      public function get stuffData() : String
      {
         return this.var_2103;
      }
      
      public function get price() : int
      {
         return this.var_1778;
      }
      
      public function get status() : int
      {
         return this.var_407;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2429;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2211;
      }
      
      public function get offerCount() : int
      {
         return this.var_1777;
      }
   }
}
