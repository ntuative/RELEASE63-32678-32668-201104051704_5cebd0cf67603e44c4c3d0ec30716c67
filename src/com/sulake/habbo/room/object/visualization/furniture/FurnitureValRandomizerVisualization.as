package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_970:int = 20;
      
      private static const const_616:int = 10;
      
      private static const const_1339:int = 31;
      
      private static const const_1340:int = 32;
      
      private static const const_615:int = 30;
       
      
      private var var_307:Array;
      
      private var var_740:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_307 = new Array();
         super();
         super.setAnimation(const_615);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_740)
            {
               this.var_740 = true;
               this.var_307 = new Array();
               this.var_307.push(const_1339);
               this.var_307.push(const_1340);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_616)
         {
            if(this.var_740)
            {
               this.var_740 = false;
               this.var_307 = new Array();
               if(direction == 2)
               {
                  this.var_307.push(const_970 + 5 - param1);
                  this.var_307.push(const_616 + 5 - param1);
               }
               else
               {
                  this.var_307.push(const_970 + param1);
                  this.var_307.push(const_616 + param1);
               }
               this.var_307.push(const_615);
               return;
            }
            super.setAnimation(const_615);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_307.length > 0)
            {
               super.setAnimation(this.var_307.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
