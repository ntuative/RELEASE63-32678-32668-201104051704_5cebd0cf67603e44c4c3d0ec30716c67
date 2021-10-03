package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2604:int;
      
      private var var_2607:int;
      
      private var var_849:Boolean;
      
      private var var_2606:int;
      
      private var var_2608:int;
      
      private var var_2605:int;
      
      private var var_2609:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2604 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         this.var_849 = param1.readBoolean();
         this.var_2606 = param1.readInteger();
         this.var_2608 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         this.var_2609 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2604;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2607;
      }
      
      public function get online() : Boolean
      {
         return this.var_849;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2606;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2608;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2605;
      }
      
      public function get banCount() : int
      {
         return this.var_2609;
      }
   }
}
