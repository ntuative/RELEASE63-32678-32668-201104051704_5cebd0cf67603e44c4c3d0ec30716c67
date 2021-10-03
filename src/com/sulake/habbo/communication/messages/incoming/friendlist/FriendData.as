package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_899:int;
      
      private var var_849:Boolean;
      
      private var var_1744:Boolean;
      
      private var var_596:String;
      
      private var var_1527:int;
      
      private var var_1745:String;
      
      private var var_1746:String;
      
      private var var_1747:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_899 = param1.readInteger();
         this.var_849 = param1.readBoolean();
         this.var_1744 = param1.readBoolean();
         this.var_596 = param1.readString();
         this.var_1527 = param1.readInteger();
         this.var_1745 = param1.readString();
         this.var_1746 = param1.readString();
         this.var_1747 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_899;
      }
      
      public function get online() : Boolean
      {
         return this.var_849;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1744;
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function get categoryId() : int
      {
         return this.var_1527;
      }
      
      public function get motto() : String
      {
         return this.var_1745;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1746;
      }
      
      public function get realName() : String
      {
         return this.var_1747;
      }
   }
}
