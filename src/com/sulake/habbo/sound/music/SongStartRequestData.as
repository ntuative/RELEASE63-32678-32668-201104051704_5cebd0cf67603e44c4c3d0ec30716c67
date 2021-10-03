package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2026:int;
      
      private var var_1703:Number;
      
      private var var_2285:Number;
      
      private var var_2283:int;
      
      private var var_2286:Number;
      
      private var var_2284:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_2026 = param1;
         this.var_1703 = param2;
         this.var_2285 = param3;
         this.var_2286 = param4;
         this.var_2284 = param5;
         this.var_2283 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2026;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1703 < 0)
         {
            return 0;
         }
         return this.var_1703 + (getTimer() - this.var_2283) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2285;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2286;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2284;
      }
   }
}
