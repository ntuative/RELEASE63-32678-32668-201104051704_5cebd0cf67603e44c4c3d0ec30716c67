package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1364:int;
      
      private var var_1641:int;
      
      private var var_2206:int;
      
      private var var_1656:int;
      
      private var var_1365:int;
      
      private var var_2127:String = "";
      
      private var var_2634:String = "";
      
      private var var_2633:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1364 = param1.readInteger();
         this.var_2127 = param1.readString();
         this.var_1641 = param1.readInteger();
         this.var_2206 = param1.readInteger();
         this.var_1656 = param1.readInteger();
         this.var_1365 = param1.readInteger();
         this.var_2633 = param1.readInteger();
         this.var_2634 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1364;
      }
      
      public function get points() : int
      {
         return this.var_1641;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2206;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1656;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1365;
      }
      
      public function get badgeID() : String
      {
         return this.var_2127;
      }
      
      public function get achievementID() : int
      {
         return this.var_2633;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2634;
      }
   }
}
