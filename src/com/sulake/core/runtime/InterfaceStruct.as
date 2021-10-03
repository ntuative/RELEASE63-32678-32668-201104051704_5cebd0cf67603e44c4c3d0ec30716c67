package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1516:IID;
      
      private var var_1960:String;
      
      private var var_106:IUnknown;
      
      private var var_817:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1516 = param1;
         this.var_1960 = getQualifiedClassName(this.var_1516);
         this.var_106 = param2;
         this.var_817 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1516;
      }
      
      public function get iis() : String
      {
         return this.var_1960;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_106;
      }
      
      public function get references() : uint
      {
         return this.var_817;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_106 == null;
      }
      
      public function dispose() : void
      {
         this.var_1516 = null;
         this.var_1960 = null;
         this.var_106 = null;
         this.var_817 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_817;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_817) : uint(0);
      }
   }
}
