package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_518:RoomObjectLocationCacheItem = null;
      
      private var var_211:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_518 = new RoomObjectLocationCacheItem(param1);
         this.var_211 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_518;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_211;
      }
      
      public function dispose() : void
      {
         if(this.var_518 != null)
         {
            this.var_518.dispose();
            this.var_518 = null;
         }
         if(this.var_211 != null)
         {
            this.var_211.dispose();
            this.var_211 = null;
         }
      }
   }
}
