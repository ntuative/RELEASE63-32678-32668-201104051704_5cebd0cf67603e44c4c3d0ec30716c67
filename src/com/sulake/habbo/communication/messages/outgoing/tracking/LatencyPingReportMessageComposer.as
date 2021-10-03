package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2463:int;
      
      private var var_2465:int;
      
      private var var_2464:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2463 = param1;
         this.var_2465 = param2;
         this.var_2464 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2463,this.var_2465,this.var_2464];
      }
      
      public function dispose() : void
      {
      }
   }
}
