package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1589:int;
      
      private var var_2791:int;
      
      private var var_776:int;
      
      private var var_480:Number;
      
      private var var_2792:Boolean;
      
      private var var_2793:int;
      
      private var var_2011:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_480);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2791 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2793 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2792 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_776;
         if(this.var_776 == 1)
         {
            this.var_480 = param1;
            this.var_1589 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_776);
            this.var_480 = this.var_480 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2792 && param3 - this.var_1589 >= this.var_2791)
         {
            this.var_776 = 0;
            if(this.var_2011 < this.var_2793)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2011;
               this.var_1589 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
