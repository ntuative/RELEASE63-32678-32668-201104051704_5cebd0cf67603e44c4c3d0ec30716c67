package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2281:int = 0;
      
      private var var_1328:String = "";
      
      private var var_1593:String = "";
      
      private var var_2113:String = "";
      
      private var var_2522:String = "";
      
      private var var_1829:int = 0;
      
      private var var_2521:int = 0;
      
      private var var_2520:int = 0;
      
      private var var_1326:int = 0;
      
      private var var_2519:int = 0;
      
      private var var_1327:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2281 = param1;
         this.var_1328 = param2;
         this.var_1593 = param3;
         this.var_2113 = param4;
         this.var_2522 = param5;
         if(param6)
         {
            this.var_1829 = 1;
         }
         else
         {
            this.var_1829 = 0;
         }
         this.var_2521 = param7;
         this.var_2520 = param8;
         this.var_1326 = param9;
         this.var_2519 = param10;
         this.var_1327 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2281,this.var_1328,this.var_1593,this.var_2113,this.var_2522,this.var_1829,this.var_2521,this.var_2520,this.var_1326,this.var_2519,this.var_1327];
      }
   }
}
