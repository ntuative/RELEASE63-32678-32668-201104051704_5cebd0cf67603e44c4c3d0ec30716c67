package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2305:int;
      
      private var var_2307:int;
      
      private var var_1094:int;
      
      private var var_1095:int;
      
      private var _activityPointType:int;
      
      private var var_2306:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2305 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this.var_1094 = param1.readInteger();
         this.var_1095 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2306 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2305;
      }
      
      public function get charges() : int
      {
         return this.var_2307;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1094;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1095;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2306;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
