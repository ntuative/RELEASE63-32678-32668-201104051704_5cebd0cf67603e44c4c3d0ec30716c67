package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2313:String;
      
      private var var_2314:int;
      
      private var var_2316:int;
      
      private var var_2315:String;
      
      private var var_2312:int;
      
      private var var_1889:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2313 = param1.readString();
         this.var_2314 = param1.readInteger();
         this.var_2316 = param1.readInteger();
         this.var_2315 = param1.readString();
         this.var_2312 = param1.readInteger();
         this.var_1889 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2313;
      }
      
      public function get unitPort() : int
      {
         return this.var_2314;
      }
      
      public function get worldId() : int
      {
         return this.var_2316;
      }
      
      public function get castLibs() : String
      {
         return this.var_2315;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2312;
      }
      
      public function get nodeId() : int
      {
         return this.var_1889;
      }
   }
}
