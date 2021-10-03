package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_204:int = 0;
       
      
      private var var_1647:int = 0;
      
      private var var_1356:Dictionary;
      
      private var var_1639:int = 0;
      
      private var var_1640:int = 0;
      
      private var var_2182:Boolean = false;
      
      private var var_2181:int = 0;
      
      private var var_2180:int = 0;
      
      public function Purse()
      {
         this.var_1356 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1647;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1647 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1639;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1639 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1640;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1640 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1639 > 0 || this.var_1640 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2182;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2182 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2181;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2181 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2180;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2180 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1356;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1356 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1356[param1];
      }
   }
}
