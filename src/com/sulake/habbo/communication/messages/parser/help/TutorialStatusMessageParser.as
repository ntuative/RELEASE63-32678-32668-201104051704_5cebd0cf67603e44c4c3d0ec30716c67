package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1119:Boolean;
      
      private var var_1120:Boolean;
      
      private var var_1396:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1119;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1120;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1396;
      }
      
      public function flush() : Boolean
      {
         this.var_1119 = false;
         this.var_1120 = false;
         this.var_1396 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1119 = param1.readBoolean();
         this.var_1120 = param1.readBoolean();
         this.var_1396 = param1.readBoolean();
         return true;
      }
   }
}
