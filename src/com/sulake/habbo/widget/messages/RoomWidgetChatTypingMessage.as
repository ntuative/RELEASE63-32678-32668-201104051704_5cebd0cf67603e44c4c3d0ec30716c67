package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_901:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_601:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_901);
         this.var_601 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_601;
      }
   }
}
