package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_899:int;
      
      private var var_849:Boolean;
      
      private var var_1974:Boolean;
      
      private var var_596:String;
      
      private var var_1527:int;
      
      private var var_1745:String;
      
      private var var_1746:String;
      
      private var var_1747:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1747 = param3;
         this.var_1745 = param4;
         this.var_899 = param5;
         this.var_849 = param6;
         this.var_1974 = param7;
         this.var_596 = param8;
         this.var_1527 = param9;
         this.var_1746 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_1974;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_899 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_849 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1974 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_596 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1527 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1745 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1746 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1747 = param1;
      }
   }
}
