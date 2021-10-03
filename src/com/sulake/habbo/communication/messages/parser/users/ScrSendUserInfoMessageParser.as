package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1990:int = 1;
      
      public static const const_1464:int = 2;
       
      
      private var var_922:String;
      
      private var var_2647:int;
      
      private var var_2648:int;
      
      private var var_2649:int;
      
      private var var_2651:int;
      
      private var var_2646:Boolean;
      
      private var var_2182:Boolean;
      
      private var var_2181:int;
      
      private var var_2180:int;
      
      private var var_2645:Boolean;
      
      private var var_2644:int;
      
      private var var_2650:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_922 = param1.readString();
         this.var_2647 = param1.readInteger();
         this.var_2648 = param1.readInteger();
         this.var_2649 = param1.readInteger();
         this.var_2651 = param1.readInteger();
         this.var_2646 = param1.readBoolean();
         this.var_2182 = param1.readBoolean();
         this.var_2181 = param1.readInteger();
         this.var_2180 = param1.readInteger();
         this.var_2645 = param1.readBoolean();
         this.var_2644 = param1.readInteger();
         this.var_2650 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_922;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2647;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2648;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2649;
      }
      
      public function get responseType() : int
      {
         return this.var_2651;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2646;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2182;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2181;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2180;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2645;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2644;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2650;
      }
   }
}
