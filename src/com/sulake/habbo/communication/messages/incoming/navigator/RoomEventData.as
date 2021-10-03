package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1289:Boolean;
      
      private var var_2322:int;
      
      private var var_2318:String;
      
      private var var_381:int;
      
      private var var_2320:int;
      
      private var var_2319:String;
      
      private var var_2323:String;
      
      private var var_2321:String;
      
      private var var_872:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_872 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1289 = false;
            return;
         }
         this.var_1289 = true;
         this.var_2322 = int(_loc2_);
         this.var_2318 = param1.readString();
         this.var_381 = int(param1.readString());
         this.var_2320 = param1.readInteger();
         this.var_2319 = param1.readString();
         this.var_2323 = param1.readString();
         this.var_2321 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_872.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_872 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2322;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2318;
      }
      
      public function get flatId() : int
      {
         return this.var_381;
      }
      
      public function get eventType() : int
      {
         return this.var_2320;
      }
      
      public function get eventName() : String
      {
         return this.var_2319;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2323;
      }
      
      public function get creationTime() : String
      {
         return this.var_2321;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1289;
      }
   }
}
