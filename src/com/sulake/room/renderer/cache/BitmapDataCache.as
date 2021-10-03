package com.sulake.room.renderer.cache
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.renderer.utils.ExtendedBitmapData;
   import flash.display.BitmapData;
   
   public class BitmapDataCache
   {
       
      
      private var _dataMap:Map;
      
      private var var_439:Array;
      
      private var var_770:int = 0;
      
      private var var_2498:int = 0;
      
      public function BitmapDataCache(param1:uint)
      {
         super();
         this._dataMap = new Map();
         this.var_439 = [];
         this.var_2498 = param1;
      }
      
      public function get memUsage() : int
      {
         return this.var_770;
      }
      
      public function get memLimit() : int
      {
         return this.var_2498;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this._dataMap != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._dataMap.length)
            {
               _loc2_ = this._dataMap.getWithIndex(_loc1_) as BitmapDataCacheItem;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this._dataMap.dispose();
            this._dataMap = null;
         }
         this.var_439 = null;
      }
      
      public function compress() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(this.memUsage > this.memLimit)
         {
            this.var_439.sortOn("useCount",0 | 0);
            _loc2_ = this.var_439.length - 1;
            while(_loc2_ >= 0)
            {
               _loc1_ = this.var_439[_loc2_] as BitmapDataCacheItem;
               if(_loc1_.useCount > 1)
               {
                  _loc2_++;
               }
               this.method_2(_loc1_);
               _loc2_--;
            }
            this.var_439.splice(_loc2_,this.var_439.length - _loc2_);
            if(this.memUsage > this.memLimit)
            {
               this.var_439.sortOn("memUsage",Array.NUMERIC);
               while(this.memUsage > this.memLimit)
               {
                  _loc1_ = this.var_439.pop() as BitmapDataCacheItem;
                  if(_loc1_ == null)
                  {
                     break;
                  }
                  this.method_2(_loc1_);
               }
            }
         }
      }
      
      private function method_2(param1:BitmapDataCacheItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1 = this._dataMap.remove(param1.name) as BitmapDataCacheItem;
         if(param1 != null)
         {
            this.var_770 -= param1.memUsage;
            param1.dispose();
         }
      }
      
      public function getBitmapData(param1:String) : ExtendedBitmapData
      {
         var _loc2_:BitmapDataCacheItem = this._dataMap.getValue(param1) as BitmapDataCacheItem;
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
      
      public function addBitmapData(param1:String, param2:ExtendedBitmapData) : void
      {
         var _loc4_:* = null;
         if(param2 == null)
         {
            return;
         }
         var _loc3_:BitmapDataCacheItem = this._dataMap.getValue(param1) as BitmapDataCacheItem;
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.bitmapData;
            if(_loc4_ != null)
            {
               this.var_770 -= _loc4_.width * _loc4_.height * 4;
            }
            _loc3_.bitmapData = param2;
         }
         else
         {
            _loc3_ = new BitmapDataCacheItem(param2,param1);
            this._dataMap.add(param1,_loc3_);
            this.var_439.push(_loc3_);
         }
         this.var_770 += param2.width * param2.height * 4;
      }
   }
}
