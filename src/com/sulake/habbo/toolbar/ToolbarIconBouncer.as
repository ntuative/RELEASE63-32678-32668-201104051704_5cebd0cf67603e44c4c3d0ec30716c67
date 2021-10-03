package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2844:Number;
      
      private var var_2012:Number;
      
      private var var_1048:Number;
      
      private var var_518:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2844 = param1;
         this.var_2012 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_1048 = param1;
         this.var_518 = 0;
      }
      
      public function update() : void
      {
         this.var_1048 += this.var_2012;
         this.var_518 += this.var_1048;
         if(this.var_518 > 0)
         {
            this.var_518 = 0;
            this.var_1048 = this.var_2844 * -1 * this.var_1048;
         }
      }
      
      public function get location() : Number
      {
         return this.var_518;
      }
   }
}
