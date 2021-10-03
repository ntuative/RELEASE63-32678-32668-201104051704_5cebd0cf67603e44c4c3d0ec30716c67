package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2466:Number = 0.0;
      
      private var var_2467:Number = 0.0;
      
      private var var_2816:Number = 0.0;
      
      private var var_2817:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2466 = param1;
         this.var_2467 = param2;
         this.var_2816 = param3;
         this.var_2817 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2466;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2467;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2816;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2817;
      }
   }
}
