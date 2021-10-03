package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1986:IID;
      
      private var var_825:Boolean;
      
      private var var_1262:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1986 = param1;
         this.var_1262 = new Array();
         this.var_825 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1986;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_825;
      }
      
      public function get receivers() : Array
      {
         return this.var_1262;
      }
      
      public function dispose() : void
      {
         if(!this.var_825)
         {
            this.var_825 = true;
            this.var_1986 = null;
            while(this.var_1262.length > 0)
            {
               this.var_1262.pop();
            }
            this.var_1262 = null;
         }
      }
   }
}
