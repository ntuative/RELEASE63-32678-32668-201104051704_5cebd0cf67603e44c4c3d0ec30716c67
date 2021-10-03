package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_243:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2500:int = 0;
      
      private var var_2502:int = 0;
      
      private var var_2499:int = 0;
      
      private var var_2501:Boolean = false;
      
      private var var_2230:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_243,param6,param7);
         this.var_2500 = param1;
         this.var_2502 = param2;
         this.var_2499 = param3;
         this.var_2501 = param4;
         this.var_2230 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2500;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2502;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2499;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2501;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2230;
      }
   }
}
