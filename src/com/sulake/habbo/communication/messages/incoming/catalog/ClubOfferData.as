package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1731:String;
      
      private var var_1778:int;
      
      private var var_2458:Boolean;
      
      private var var_2455:Boolean;
      
      private var var_2457:int;
      
      private var var_2454:int;
      
      private var var_2456:int;
      
      private var var_2453:int;
      
      private var var_2459:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1731 = param1.readString();
         this.var_1778 = param1.readInteger();
         this.var_2458 = param1.readBoolean();
         this.var_2455 = param1.readBoolean();
         this.var_2457 = param1.readInteger();
         this.var_2454 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this.var_2453 = param1.readInteger();
         this.var_2459 = param1.readInteger();
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
   }
}
