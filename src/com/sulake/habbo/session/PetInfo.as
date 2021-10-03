package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1888:int;
      
      private var var_1364:int;
      
      private var var_2484:int;
      
      private var var_2483:int;
      
      private var var_2481:int;
      
      private var _energy:int;
      
      private var var_2482:int;
      
      private var _nutrition:int;
      
      private var var_2486:int;
      
      private var var_2359:int;
      
      private var _ownerName:String;
      
      private var var_2369:int;
      
      private var var_492:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1888;
      }
      
      public function get level() : int
      {
         return this.var_1364;
      }
      
      public function get levelMax() : int
      {
         return this.var_2484;
      }
      
      public function get experience() : int
      {
         return this.var_2483;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2481;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2482;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2486;
      }
      
      public function get ownerId() : int
      {
         return this.var_2359;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2369;
      }
      
      public function get age() : int
      {
         return this.var_492;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1888 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1364 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2369 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_492 = param1;
      }
   }
}
