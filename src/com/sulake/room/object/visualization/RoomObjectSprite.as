package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1148:int = 0;
       
      
      private var var_422:BitmapData = null;
      
      private var var_1733:String = "";
      
      private var var_318:Boolean = true;
      
      private var var_2271:String = "";
      
      private var var_2402:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2826:String = "normal";
      
      private var var_1506:Boolean = false;
      
      private var var_1507:Boolean = false;
      
      private var _offset:Point;
      
      private var var_276:int = 0;
      
      private var _height:int = 0;
      
      private var var_1169:Number = 0;
      
      private var var_2270:Boolean = false;
      
      private var var_2827:Boolean = true;
      
      private var var_2269:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2825:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1148++;
      }
      
      public function dispose() : void
      {
         this.var_422 = null;
         this.var_276 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_422;
      }
      
      public function get assetName() : String
      {
         return this.var_1733;
      }
      
      public function get visible() : Boolean
      {
         return this.var_318;
      }
      
      public function get tag() : String
      {
         return this.var_2271;
      }
      
      public function get alpha() : int
      {
         return this.var_2402;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2826;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1507;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1506;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_276;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1169;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2270;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2827;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2269;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2825;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_276 = param1.width;
            this._height = param1.height;
         }
         this.var_422 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1733 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_318 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2271 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2402 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2826 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2825 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1506 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1507 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1169 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2270 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2827 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2269 = param1;
         ++this._updateID;
      }
   }
}
