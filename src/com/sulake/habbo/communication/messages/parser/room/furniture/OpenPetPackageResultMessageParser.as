package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_373:int = 0;
      
      private var var_1751:int = 0;
      
      private var var_1752:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_373;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1751;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1752;
      }
      
      public function flush() : Boolean
      {
         this.var_373 = 0;
         this.var_1751 = 0;
         this.var_1752 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_373 = param1.readInteger();
         this.var_1751 = param1.readInteger();
         this.var_1752 = param1.readString();
         return true;
      }
   }
}
