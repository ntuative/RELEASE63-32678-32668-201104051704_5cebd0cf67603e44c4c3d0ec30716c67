package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1364:int;
      
      private var var_296:String;
      
      private var var_2748:int;
      
      private var var_2206:int;
      
      private var var_1656:int;
      
      private var var_2749:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1364 = param1.readInteger();
         this.var_296 = param1.readString();
         this.var_2748 = param1.readInteger();
         this.var_2206 = param1.readInteger();
         this.var_1656 = param1.readInteger();
         this.var_2749 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_296;
      }
      
      public function get level() : int
      {
         return this.var_1364;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2748;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2206;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1656;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2749;
      }
   }
}
