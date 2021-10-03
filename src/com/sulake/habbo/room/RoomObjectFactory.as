package com.sulake.habbo.room
{
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.RoomObjectLogicEnum;
   import com.sulake.habbo.room.object.logic.AvatarLogic;
   import com.sulake.habbo.room.object.logic.PetLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureBillboardLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureClothingChangeLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCounterClockLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCreditLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureDiceLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureEcotronBoxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureFireworksLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHabboWheelLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHockeyScoreLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureIceStormLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureJukeboxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureMultiStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureOneWayDoorLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlaceholderLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlanetSystemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePresentLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePushableLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureQuestVendingWallItemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRandomStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRoomDimmerLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureScoreBoardLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureSongDiskLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureSoundMachineLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureStickieLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTeaserLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTrophyLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureWindowLogic;
   import com.sulake.habbo.room.object.logic.room.RoomLogic;
   import com.sulake.habbo.room.object.logic.room.RoomTileCursorLogic;
   import com.sulake.habbo.room.object.logic.room.SelectionArrowLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomParkLogic;
   import com.sulake.room.IRoomObjectFactory;
   import com.sulake.room.IRoomObjectManager;
   import com.sulake.room.RoomObjectManager;
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   
   public class RoomObjectFactory extends Component implements IRoomObjectFactory
   {
       
      
      private var var_2025:Map;
      
      private var var_1276:Map;
      
      private var var_1042:Array;
      
      public function RoomObjectFactory(param1:IContext, param2:uint = 0)
      {
         this.var_2025 = new Map();
         this.var_1276 = new Map();
         this.var_1042 = [];
         super(param1,param2);
      }
      
      public function addObjectEventListener(param1:Function) : void
      {
         var _loc2_:* = null;
         if(this.var_1042.indexOf(param1) < 0)
         {
            this.var_1042.push(param1);
            if(param1 != null)
            {
               for each(_loc2_ in this.var_1276.getKeys())
               {
                  events.addEventListener(_loc2_,param1);
               }
            }
         }
      }
      
      public function removeObjectEventListener(param1:Function) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_1042.indexOf(param1);
         if(_loc3_ >= 0)
         {
            this.var_1042.splice(_loc3_,1);
            if(param1 != null)
            {
               for each(_loc2_ in this.var_1276.getKeys())
               {
                  events.removeEventListener(_loc2_,param1);
               }
            }
         }
      }
      
      private function addTrackedEventType(param1:String) : void
      {
         var _loc2_:* = null;
         if(this.var_1276.getValue(param1) == null)
         {
            this.var_1276.add(param1,true);
            for each(_loc2_ in this.var_1042)
            {
               if(_loc2_ != null)
               {
                  events.addEventListener(param1,_loc2_);
               }
            }
         }
      }
      
      public function createRoomObjectLogic(param1:String) : IRoomObjectEventHandler
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:* = null;
         switch(param1)
         {
            case RoomObjectLogicEnum.const_1697:
               _loc2_ = FurnitureLogic;
               break;
            case RoomObjectLogicEnum.const_1619:
               _loc2_ = FurnitureMultiStateLogic;
               break;
            case RoomObjectLogicEnum.const_1488:
               _loc2_ = FurniturePlaceholderLogic;
               break;
            case RoomObjectLogicEnum.const_230:
            case RoomObjectLogicEnum.BOT:
               _loc2_ = AvatarLogic;
               break;
            case RoomObjectLogicEnum.const_70:
               _loc2_ = PetLogic;
               break;
            case RoomObjectLogicEnum.const_1562:
               _loc2_ = FurnitureRandomStateLogic;
               break;
            case RoomObjectLogicEnum.const_1485:
               _loc2_ = FurnitureCreditLogic;
               break;
            case RoomObjectLogicEnum.const_1549:
               _loc2_ = FurnitureStickieLogic;
               break;
            case RoomObjectLogicEnum.const_1423:
               _loc2_ = FurniturePresentLogic;
               break;
            case RoomObjectLogicEnum.const_1581:
               _loc2_ = FurnitureTrophyLogic;
               break;
            case RoomObjectLogicEnum.const_1475:
               _loc2_ = FurnitureTeaserLogic;
               break;
            case RoomObjectLogicEnum.const_1573:
               _loc2_ = FurnitureEcotronBoxLogic;
               break;
            case RoomObjectLogicEnum.const_1504:
               _loc2_ = FurnitureDiceLogic;
               break;
            case RoomObjectLogicEnum.const_1651:
               _loc2_ = FurnitureHockeyScoreLogic;
               break;
            case RoomObjectLogicEnum.const_335:
               _loc2_ = FurnitureHabboWheelLogic;
               break;
            case RoomObjectLogicEnum.const_1668:
               _loc2_ = FurnitureQuestVendingWallItemLogic;
               break;
            case RoomObjectLogicEnum.const_1535:
               _loc2_ = FurnitureOneWayDoorLogic;
               break;
            case RoomObjectLogicEnum.const_300:
               _loc2_ = FurniturePlanetSystemLogic;
               break;
            case RoomObjectLogicEnum.const_1684:
               _loc2_ = FurnitureWindowLogic;
               break;
            case RoomObjectLogicEnum.const_1556:
               _loc2_ = FurnitureRoomDimmerLogic;
               break;
            case RoomObjectLogicEnum.const_1614:
               _loc2_ = RoomTileCursorLogic;
               break;
            case RoomObjectLogicEnum.const_1621:
               _loc2_ = SelectionArrowLogic;
               break;
            case RoomObjectLogicEnum.const_1471:
               _loc2_ = FurnitureSoundMachineLogic;
               break;
            case RoomObjectLogicEnum.const_1705:
               _loc2_ = FurnitureJukeboxLogic;
               break;
            case RoomObjectLogicEnum.const_1516:
               _loc2_ = FurnitureSongDiskLogic;
               break;
            case RoomObjectLogicEnum.const_1445:
               _loc2_ = FurniturePushableLogic;
               break;
            case RoomObjectLogicEnum.const_1579:
               _loc2_ = FurnitureClothingChangeLogic;
               break;
            case RoomObjectLogicEnum.const_303:
               _loc2_ = FurnitureCounterClockLogic;
               break;
            case RoomObjectLogicEnum.const_301:
               _loc2_ = FurnitureScoreBoardLogic;
               break;
            case RoomObjectLogicEnum.const_1523:
               _loc2_ = FurnitureIceStormLogic;
               break;
            case RoomObjectLogicEnum.const_342:
               _loc2_ = FurnitureFireworksLogic;
               break;
            case RoomObjectLogicEnum.const_291:
               _loc2_ = FurnitureBillboardLogic;
               break;
            case RoomObjectLogicEnum.const_305:
               _loc2_ = RoomLogic;
               break;
            case RoomObjectLogicEnum.const_348:
               _loc2_ = PublicRoomLogic;
               break;
            case RoomObjectLogicEnum.const_344:
               _loc2_ = PublicRoomParkLogic;
         }
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:Object = new _loc2_();
         if(_loc3_ is IRoomObjectEventHandler)
         {
            _loc4_ = _loc3_ as IRoomObjectEventHandler;
            _loc4_.eventDispatcher = this.events;
            if(this.var_2025.getValue(param1) == null)
            {
               this.var_2025.add(param1,true);
               _loc5_ = _loc4_.getEventTypes();
               for each(_loc6_ in _loc5_)
               {
                  this.addTrackedEventType(_loc6_);
               }
            }
            return _loc4_;
         }
         return null;
      }
      
      public function createRoomObjectManager() : IRoomObjectManager
      {
         return new RoomObjectManager();
      }
   }
}
