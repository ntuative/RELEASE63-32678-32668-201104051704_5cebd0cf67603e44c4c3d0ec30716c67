package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_373:int;
      
      private var var_2426:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_373 = param1;
         this.var_2426 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_373,this.var_2426];
      }
      
      public function dispose() : void
      {
      }
   }
}
