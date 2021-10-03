package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_923:IAssetLoader;
      
      private var var_1733:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1733 = param1;
         this.var_923 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1733;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_923;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_923 != null)
            {
               if(!this.var_923.disposed)
               {
                  this.var_923.dispose();
                  this.var_923 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
