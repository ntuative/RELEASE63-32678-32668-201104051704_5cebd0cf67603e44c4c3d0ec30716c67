package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1731:String;
      
      private var var_1778:int;
      
      private var var_2458:Boolean;
      
      private var var_2455:Boolean;
      
      private var var_2457:int;
      
      private var var_2454:int;
      
      private var var_362:ICatalogPage;
      
      private var var_2456:int;
      
      private var var_2453:int;
      
      private var var_2459:int;
      
      private var var_1343:String;
      
      private var var_2490:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1731 = param2;
         this.var_1778 = param3;
         this.var_2458 = param4;
         this.var_2455 = param5;
         this.var_2457 = param6;
         this.var_2454 = param7;
         this.var_2456 = param8;
         this.var_2453 = param9;
         this.var_2459 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1343;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1343 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1731;
      }
      
      public function get price() : int
      {
         return this.var_1778;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2458;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2455;
      }
      
      public function get periods() : int
      {
         return this.var_2457;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2454;
      }
      
      public function get year() : int
      {
         return this.var_2456;
      }
      
      public function get month() : int
      {
         return this.var_2453;
      }
      
      public function get day() : int
      {
         return this.var_2459;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_204;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1778;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_362;
      }
      
      public function get priceType() : String
      {
         return Offer.const_747;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1731;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_362 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2490;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2490 = param1;
      }
   }
}
