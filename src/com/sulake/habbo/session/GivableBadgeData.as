package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_296:int;
      
      private var var_2121:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_296 = param1;
         this.var_2121 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_296;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2121;
      }
   }
}
