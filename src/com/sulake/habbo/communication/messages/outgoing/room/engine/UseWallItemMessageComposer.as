package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class UseWallItemMessageComposer implements IMessageComposer
   {
       
      
      private var var_373:int;
      
      private var var_19:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int = 0;
      
      public function UseWallItemMessageComposer(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_373 = param1;
         this.var_19 = param2;
         this._roomId = param3;
         this._roomCategory = param4;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_373,this.var_19];
      }
   }
}
