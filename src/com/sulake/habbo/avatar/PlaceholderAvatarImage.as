package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_749:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_825)
         {
            _structure = null;
            _assets = null;
            var_250 = null;
            var_287 = null;
            var_596 = null;
            var_568 = null;
            var_336 = null;
            if(!var_1309 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_826 = null;
            var_825 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_749[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_749[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_395:
               switch(_loc3_)
               {
                  case AvatarAction.const_691:
                  case AvatarAction.const_538:
                  case AvatarAction.const_364:
                  case AvatarAction.const_916:
                  case AvatarAction.const_396:
                  case AvatarAction.const_702:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_295:
            case AvatarAction.const_640:
            case AvatarAction.const_224:
            case AvatarAction.const_861:
            case AvatarAction.const_851:
            case AvatarAction.const_684:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
