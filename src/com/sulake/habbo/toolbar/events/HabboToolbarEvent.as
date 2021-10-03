package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_69:String = "HTE_INITIALIZED";
      
      public static const const_36:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_530:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_716:String = "HTE_TOOLBAR_RESIZED";
       
      
      private var var_850:String;
      
      private var var_501:String;
      
      private var var_1291:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_850 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_850;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_501 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_501;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1291 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1291;
      }
   }
}
