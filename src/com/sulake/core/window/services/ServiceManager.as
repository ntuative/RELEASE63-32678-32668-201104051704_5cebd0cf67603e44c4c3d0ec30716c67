package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2915:uint;
      
      private var var_145:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_279:IWindowContext;
      
      private var var_1213:IMouseDraggingService;
      
      private var var_1216:IMouseScalingService;
      
      private var var_1211:IMouseListenerService;
      
      private var var_1214:IFocusManagerService;
      
      private var var_1215:IToolTipAgentService;
      
      private var var_1212:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2915 = 0;
         this.var_145 = param2;
         this.var_279 = param1;
         this.var_1213 = new WindowMouseDragger(param2);
         this.var_1216 = new WindowMouseScaler(param2);
         this.var_1211 = new WindowMouseListener(param2);
         this.var_1214 = new FocusManager(param2);
         this.var_1215 = new WindowToolTipAgent(param2);
         this.var_1212 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1213 != null)
         {
            this.var_1213.dispose();
            this.var_1213 = null;
         }
         if(this.var_1216 != null)
         {
            this.var_1216.dispose();
            this.var_1216 = null;
         }
         if(this.var_1211 != null)
         {
            this.var_1211.dispose();
            this.var_1211 = null;
         }
         if(this.var_1214 != null)
         {
            this.var_1214.dispose();
            this.var_1214 = null;
         }
         if(this.var_1215 != null)
         {
            this.var_1215.dispose();
            this.var_1215 = null;
         }
         if(this.var_1212 != null)
         {
            this.var_1212.dispose();
            this.var_1212 = null;
         }
         this.var_145 = null;
         this.var_279 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1213;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1216;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1211;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1214;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1215;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1212;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
