package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2431:String;
      
      private var var_2433:Array;
      
      private var var_2430:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2431 = param1;
         this.var_2433 = param2;
         this.var_2430 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2431;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2433;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2430;
      }
   }
}
