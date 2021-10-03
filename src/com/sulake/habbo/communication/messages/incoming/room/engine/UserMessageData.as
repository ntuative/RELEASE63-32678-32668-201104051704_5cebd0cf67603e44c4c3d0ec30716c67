package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1029:String = "M";
      
      public static const const_1448:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_361:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_1028:String = "";
      
      private var var_596:String = "";
      
      private var var_2327:String = "";
      
      private var var_2329:int;
      
      private var var_2326:int = 0;
      
      private var var_2325:String = "";
      
      private var var_2324:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_2615:String = "";
      
      private var var_190:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_190 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_190)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_152;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_152 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_151;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_151 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_361;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_361 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_190)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_190)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1028;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_1028 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_596 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2327;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2327 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2329;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2329 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2326;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2326 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2325;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2325 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2324;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2324 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2328;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2328 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2615;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2615 = param1;
         }
      }
   }
}
