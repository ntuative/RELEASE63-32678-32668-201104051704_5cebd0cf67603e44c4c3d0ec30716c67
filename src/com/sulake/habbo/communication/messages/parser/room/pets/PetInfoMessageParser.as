package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1888:int;
      
      private var _name:String;
      
      private var var_1364:int;
      
      private var var_2852:int;
      
      private var var_2483:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_596:String;
      
      private var var_2850:int;
      
      private var var_2853:int;
      
      private var var_2851:int;
      
      private var var_2369:int;
      
      private var var_2359:int;
      
      private var _ownerName:String;
      
      private var var_492:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1888;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1364;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2852;
      }
      
      public function get experience() : int
      {
         return this.var_2483;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2850;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2853;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2851;
      }
      
      public function get respect() : int
      {
         return this.var_2369;
      }
      
      public function get ownerId() : int
      {
         return this.var_2359;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_492;
      }
      
      public function flush() : Boolean
      {
         this.var_1888 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1888 = param1.readInteger();
         this._name = param1.readString();
         this.var_1364 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2483 = param1.readInteger();
         this.var_2850 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2853 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2851 = param1.readInteger();
         this.var_596 = param1.readString();
         this.var_2369 = param1.readInteger();
         this.var_2359 = param1.readInteger();
         this.var_492 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
