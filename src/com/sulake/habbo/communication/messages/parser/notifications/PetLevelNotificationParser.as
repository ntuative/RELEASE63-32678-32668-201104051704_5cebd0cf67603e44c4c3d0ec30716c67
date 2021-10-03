package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1888:int;
      
      private var var_2426:String;
      
      private var var_1364:int;
      
      private var var_1103:int;
      
      private var var_1665:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1888 = param1.readInteger();
         this.var_2426 = param1.readString();
         this.var_1364 = param1.readInteger();
         this.var_1103 = param1.readInteger();
         this.var_1665 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1888;
      }
      
      public function get petName() : String
      {
         return this.var_2426;
      }
      
      public function get level() : int
      {
         return this.var_1364;
      }
      
      public function get petType() : int
      {
         return this.var_1103;
      }
      
      public function get breed() : int
      {
         return this.var_1665;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
