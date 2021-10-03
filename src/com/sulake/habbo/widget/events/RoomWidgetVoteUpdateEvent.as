package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_156:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_133:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1088:String;
      
      private var var_1425:Array;
      
      private var var_1247:Array;
      
      private var var_1769:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1088 = param2;
         this.var_1425 = param3;
         this.var_1247 = param4;
         if(this.var_1247 == null)
         {
            this.var_1247 = [];
         }
         this.var_1769 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1088;
      }
      
      public function get choices() : Array
      {
         return this.var_1425.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1247.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1769;
      }
   }
}
