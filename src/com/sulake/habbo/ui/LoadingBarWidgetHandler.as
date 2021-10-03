package com.sulake.habbo.ui
{
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetInterstitialUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetLoadingBarUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import flash.events.Event;
   
   public class LoadingBarWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_825:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function LoadingBarWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_825;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_570;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_825 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(AdEvent.const_474);
         _loc1_.push(AdEvent.const_464);
         _loc1_.push(RoomWidgetLoadingBarUpdateEvent.const_109);
         _loc1_.push(RoomWidgetLoadingBarUpdateEvent.const_346);
         return _loc1_;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._container == null || this._container.events == null)
         {
            return;
         }
         switch(param1.type)
         {
            case AdEvent.const_474:
               _loc2_ = param1 as AdEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = new RoomWidgetInterstitialUpdateEvent(RoomWidgetInterstitialUpdateEvent.const_109,_loc2_.image,_loc2_.clickUrl);
               this._container.events.dispatchEvent(_loc3_);
               break;
            case AdEvent.const_464:
               this._container.setInterstitialCompleted();
               break;
            case RoomWidgetLoadingBarUpdateEvent.const_109:
               this._container.events.dispatchEvent(param1);
               break;
            case RoomWidgetLoadingBarUpdateEvent.const_346:
               this._container.events.dispatchEvent(param1);
         }
      }
      
      public function update() : void
      {
      }
   }
}
