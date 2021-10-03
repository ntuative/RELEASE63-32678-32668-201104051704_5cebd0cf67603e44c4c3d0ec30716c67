package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1341:int = 80;
       
      
      private var var_517:Map;
      
      private var var_946:String = "";
      
      private var var_1446:Array;
      
      public function UserRegistry()
      {
         this.var_517 = new Map();
         this.var_1446 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_517;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_946 = param1;
         if(this.var_946 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_946 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_517.getValue(param1) != null)
         {
            this.var_517.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_946);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_946 == "")
         {
            this.var_1446.push(param1);
         }
         this.var_517.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_517.length > const_1341)
         {
            _loc1_ = this.var_517.getKey(0);
            this.var_517.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1446.length > 0)
         {
            _loc1_ = this.var_517.getValue(this.var_1446.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_946;
            }
         }
      }
   }
}
