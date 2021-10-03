package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_407:int;
      
      private var _type:String;
      
      private var var_1823:String;
      
      private var var_1822:int;
      
      private var var_1821:String;
      
      private var var_771:String;
      
      private var var_1824:String;
      
      private var var_2506:String;
      
      private var var_2507:uint;
      
      private var var_2508:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_407 = param1.readInteger();
         this._type = param1.readString();
         this.var_1823 = param1.readString();
         this.var_1822 = param1.readInteger();
         this.var_1821 = param1.readString();
         this.var_771 = param1.readString();
         this.var_2506 = param1.readString();
         this.var_2508 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_771.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_771.charAt(_loc3_)))
         {
            _loc2_ = this.var_771.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1824 = this.var_771.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1824 = this.var_771;
         }
         this.var_2507 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_407 = 0;
         this._type = "";
         this.var_1823 = "";
         this.var_1822 = 0;
         this.var_1821 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_407;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1823;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1822;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1821;
      }
      
      public function get localizationCode() : String
      {
         return this.var_771;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2507;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2508;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1824;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2506;
      }
   }
}
