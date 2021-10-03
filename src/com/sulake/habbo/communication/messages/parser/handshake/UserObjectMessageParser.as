package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_596:String;
      
      private var var_1028:String;
      
      private var var_2775:String;
      
      private var var_1747:String;
      
      private var var_2777:int;
      
      private var var_2776:String;
      
      private var var_2778:int;
      
      private var var_2779:int;
      
      private var var_2258:int;
      
      private var _respectLeft:int;
      
      private var var_822:int;
      
      private var var_2746:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_596 = param1.readString();
         this.var_1028 = param1.readString();
         this.var_2775 = param1.readString();
         this.var_1747 = param1.readString();
         this.var_2777 = param1.readInteger();
         this.var_2776 = param1.readString();
         this.var_2778 = param1.readInteger();
         this.var_2779 = param1.readInteger();
         this.var_2258 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_822 = param1.readInteger();
         this.var_2746 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function get sex() : String
      {
         return this.var_1028;
      }
      
      public function get customData() : String
      {
         return this.var_2775;
      }
      
      public function get realName() : String
      {
         return this.var_1747;
      }
      
      public function get tickets() : int
      {
         return this.var_2777;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2776;
      }
      
      public function get method_12() : int
      {
         return this.var_2778;
      }
      
      public function get directMail() : int
      {
         return this.var_2779;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2258;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_822;
      }
      
      public function get identityId() : int
      {
         return this.var_2746;
      }
   }
}
