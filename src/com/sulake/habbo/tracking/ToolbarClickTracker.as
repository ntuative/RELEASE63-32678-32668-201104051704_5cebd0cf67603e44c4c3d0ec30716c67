package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1324:IHabboTracking;
      
      private var var_1887:Boolean = false;
      
      private var var_2614:int = 0;
      
      private var var_1895:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1324 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1324 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1887 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2614 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1887)
         {
            return;
         }
         ++this.var_1895;
         if(this.var_1895 <= this.var_2614)
         {
            this.var_1324.track("toolbar",param1);
         }
      }
   }
}
