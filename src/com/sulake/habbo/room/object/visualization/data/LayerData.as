package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_685:String = "";
      
      public static const const_360:int = 0;
      
      public static const const_488:int = 255;
      
      public static const const_715:Boolean = false;
      
      public static const const_453:int = 0;
      
      public static const const_557:int = 0;
      
      public static const const_416:int = 0;
      
      public static const const_1215:int = 1;
      
      public static const const_1212:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2271:String = "";
      
      private var var_1695:int = 0;
      
      private var var_2402:int = 255;
      
      private var var_2673:Boolean = false;
      
      private var var_2674:int = 0;
      
      private var var_2671:int = 0;
      
      private var var_2672:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2271 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2271;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1695 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1695;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2402 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2402;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2673 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2673;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2674 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2674;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2671;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2672 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2672;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
