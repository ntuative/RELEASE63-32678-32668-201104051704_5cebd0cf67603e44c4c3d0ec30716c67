package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1072:String = "AssetLoaderEventProgress";
      
      public static const const_1118:String = "AssetLoaderEventUnload";
      
      public static const const_1037:String = "AssetLoaderEventStatus";
      
      public static const const_49:String = "AssetLoaderEventError";
      
      public static const const_1210:String = "AssetLoaderEventOpen";
       
      
      private var var_407:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_407 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_407;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_407);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
