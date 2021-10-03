package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1000:int = 3;
       
      
      private var var_2700:int = -1;
      
      private var var_2707:int = -2;
      
      private var var_236:Vector3d = null;
      
      private var var_213:Vector3d = null;
      
      private var var_1968:Vector3d;
      
      private var var_2702:Boolean = false;
      
      private var var_2704:Boolean = false;
      
      private var var_2708:Boolean = false;
      
      private var var_2705:Boolean = false;
      
      private var var_2703:int = 0;
      
      private var var_2701:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2709:int = 0;
      
      private var var_2706:int = 0;
      
      private var var_1632:int = -1;
      
      private var var_1520:int = 0;
      
      private var var_1969:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1968 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_213;
      }
      
      public function get targetId() : int
      {
         return this.var_2700;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2707;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1968;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2702;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2704;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2708;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2705;
      }
      
      public function get screenWd() : int
      {
         return this.var_2703;
      }
      
      public function get screenHt() : int
      {
         return this.var_2701;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2709;
      }
      
      public function get roomHt() : int
      {
         return this.var_2706;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1632;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_236 != null && this.var_213 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2700 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1968.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2707 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2702 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2705 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2703 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2701 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1969 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2709 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2706 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1632 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_236 == null)
         {
            this.var_236 = new Vector3d();
         }
         if(this.var_236.x != param1.x || this.var_236.y != param1.y || this.var_236.z != param1.z)
         {
            this.var_236.assign(param1);
            this.var_1520 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_236 = null;
         this.var_213 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_213 != null)
         {
            return;
         }
         this.var_213 = new Vector3d();
         this.var_213.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_213 == null)
         {
            this.var_213 = new Vector3d();
         }
         this.var_213.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_236 != null && this.var_213 != null)
         {
            ++this.var_1520;
            if(this.var_1969)
            {
               this.var_1969 = false;
               this.var_213 = this.var_236;
               this.var_236 = null;
               return;
            }
            _loc4_ = Vector3d.dif(this.var_236,this.var_213);
            if(_loc4_.length <= param2)
            {
               this.var_213 = this.var_236;
               this.var_236 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_1000 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1520 <= const_1000)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_213 = Vector3d.sum(this.var_213,_loc4_);
            }
         }
      }
   }
}
