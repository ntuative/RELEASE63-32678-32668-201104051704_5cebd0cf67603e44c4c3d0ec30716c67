package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2557:int;
      
      private var var_2555:int;
      
      private var var_2558:String;
      
      private var var_2556:int;
      
      private var var_2554:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2557 = param1;
         this.var_2555 = param2;
         this.var_2558 = param3;
         this.var_2556 = param4;
         this.var_2554 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2557,this.var_2555,this.var_2558,this.var_2556,int(this.var_2554)];
      }
      
      public function dispose() : void
      {
      }
   }
}
