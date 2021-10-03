package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1679:String;
      
      private var var_2138:int;
      
      private var _password:String;
      
      private var var_1527:int;
      
      private var var_2141:int;
      
      private var var_872:Array;
      
      private var var_2136:Array;
      
      private var var_2143:Boolean;
      
      private var var_2140:Boolean;
      
      private var var_2137:Boolean;
      
      private var var_2135:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2143;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2143 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2140;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2140 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2137;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2137 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2135;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2135 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1679;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1679 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2138;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2138 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1527;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1527 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2141;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2141 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_872 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2136;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2136 = param1;
      }
   }
}
