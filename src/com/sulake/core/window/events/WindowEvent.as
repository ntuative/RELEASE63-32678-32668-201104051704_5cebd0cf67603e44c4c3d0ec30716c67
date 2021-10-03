package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1424:String = "WE_DESTROY";
      
      public static const const_323:String = "WE_DESTROYED";
      
      public static const const_1577:String = "WE_OPEN";
      
      public static const const_1490:String = "WE_OPENED";
      
      public static const const_1520:String = "WE_CLOSE";
      
      public static const const_1461:String = "WE_CLOSED";
      
      public static const const_1451:String = "WE_FOCUS";
      
      public static const const_339:String = "WE_FOCUSED";
      
      public static const const_1570:String = "WE_UNFOCUS";
      
      public static const const_1545:String = "WE_UNFOCUSED";
      
      public static const const_1584:String = "WE_ACTIVATE";
      
      public static const const_572:String = "WE_ACTIVATED";
      
      public static const const_1563:String = "WE_DEACTIVATE";
      
      public static const const_522:String = "WE_DEACTIVATED";
      
      public static const const_318:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_466:String = "WE_UNSELECT";
      
      public static const const_525:String = "WE_UNSELECTED";
      
      public static const const_1492:String = "WE_LOCK";
      
      public static const const_1627:String = "WE_LOCKED";
      
      public static const const_1666:String = "WE_UNLOCK";
      
      public static const const_1446:String = "WE_UNLOCKED";
      
      public static const const_687:String = "WE_ENABLE";
      
      public static const const_250:String = "WE_ENABLED";
      
      public static const const_806:String = "WE_DISABLE";
      
      public static const const_197:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_240:String = "WE_RELOCATED";
      
      public static const const_1116:String = "WE_RESIZE";
      
      public static const const_38:String = "WE_RESIZED";
      
      public static const const_1703:String = "WE_MINIMIZE";
      
      public static const const_1598:String = "WE_MINIMIZED";
      
      public static const const_1472:String = "WE_MAXIMIZE";
      
      public static const const_1425:String = "WE_MAXIMIZED";
      
      public static const const_1502:String = "WE_RESTORE";
      
      public static const const_1470:String = "WE_RESTORED";
      
      public static const const_550:String = "WE_CHILD_ADDED";
      
      public static const const_413:String = "WE_CHILD_REMOVED";
      
      public static const const_182:String = "WE_CHILD_RELOCATED";
      
      public static const const_138:String = "WE_CHILD_RESIZED";
      
      public static const const_327:String = "WE_CHILD_ACTIVATED";
      
      public static const const_826:String = "WE_PARENT_ADDED";
      
      public static const const_1430:String = "WE_PARENT_REMOVED";
      
      public static const const_1572:String = "WE_PARENT_RELOCATED";
      
      public static const const_1032:String = "WE_PARENT_RESIZED";
      
      public static const const_1101:String = "WE_PARENT_ACTIVATED";
      
      public static const const_180:String = "WE_OK";
      
      public static const const_798:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_479:String = "WE_SCROLL";
      
      public static const const_161:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_700:IWindow;
      
      protected var var_1069:Boolean;
      
      protected var var_476:Boolean;
      
      protected var var_572:Boolean;
      
      protected var var_701:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_700 = param3;
         _loc5_.var_476 = param4;
         _loc5_.var_572 = false;
         _loc5_.var_701 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_700;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_476;
      }
      
      public function recycle() : void
      {
         if(this.var_572)
         {
            throw new Error("Event already recycled!");
         }
         this.var_700 = null;
         this._window = null;
         this.var_572 = true;
         this.var_1069 = false;
         this.var_701.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1069;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1069 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1069;
      }
      
      public function stopPropagation() : void
      {
         this.var_1069 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1069 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_476 + " window: " + this._window + " }";
      }
   }
}
