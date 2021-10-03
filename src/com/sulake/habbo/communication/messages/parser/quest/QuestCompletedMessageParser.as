package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestCompletedMessageParser implements IMessageParser
   {
       
      
      private var var_1750:String;
      
      private var var_1165:QuestMessageData;
      
      public function QuestCompletedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1750 = "";
         if(this.var_1165)
         {
            this.var_1165.dispose();
         }
         this.var_1165 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1750 = param1.readString();
         this.var_1165 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1750;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_1165;
      }
   }
}
