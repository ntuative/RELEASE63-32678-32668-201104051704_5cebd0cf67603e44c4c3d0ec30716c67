package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_647:int = 1;
      
      public static const const_845:int = 2;
      
      public static const const_728:int = 3;
      
      public static const const_1193:int = 4;
      
      public static const const_850:int = 5;
      
      public static const const_1200:int = 6;
       
      
      private var _type:int;
      
      private var var_1259:int;
      
      private var var_2517:String;
      
      private var var_2518:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1259 = param2;
         this.var_2517 = param3;
         this.var_2518 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2517;
      }
      
      public function get time() : String
      {
         return this.var_2518;
      }
      
      public function get senderId() : int
      {
         return this.var_1259;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
