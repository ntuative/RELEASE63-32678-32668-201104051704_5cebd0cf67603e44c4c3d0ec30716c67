package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2157:int;
      
      private var var_2044:String;
      
      private var var_2386:String;
      
      private var var_2385:Boolean;
      
      private var var_2382:Boolean;
      
      private var var_2387:int;
      
      private var var_2383:String;
      
      private var var_2384:String;
      
      private var var_1747:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2157 = param1.readInteger();
         this.var_2044 = param1.readString();
         this.var_2386 = param1.readString();
         this.var_2385 = param1.readBoolean();
         this.var_2382 = param1.readBoolean();
         param1.readString();
         this.var_2387 = param1.readInteger();
         this.var_2383 = param1.readString();
         this.var_2384 = param1.readString();
         this.var_1747 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2157;
      }
      
      public function get avatarName() : String
      {
         return this.var_2044;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2386;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2385;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2382;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2387;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2383;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2384;
      }
      
      public function get realName() : String
      {
         return this.var_1747;
      }
   }
}
