package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_115:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_135:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1158:int = 2;
      
      public static const const_1105:int = 3;
      
      public static const const_1650:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1745:String = "";
      
      private var var_2329:int;
      
      private var var_2326:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_596:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_270:Array;
      
      private var var_1935:Array;
      
      private var var_1379:int = 0;
      
      private var var_2662:String = "";
      
      private var var_2663:int = 0;
      
      private var var_2661:int = 0;
      
      private var var_1628:Boolean = false;
      
      private var var_1747:String = "";
      
      private var var_2718:Boolean = false;
      
      private var var_2714:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2711:Boolean = false;
      
      private var var_2712:Boolean = false;
      
      private var var_2716:Boolean = false;
      
      private var var_2713:Boolean = false;
      
      private var var_2715:Boolean = false;
      
      private var var_2719:Boolean = false;
      
      private var var_2717:int = 0;
      
      private var var_1626:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_270 = [];
         this.var_1935 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1745 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1745;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2329 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2329;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2326 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2326;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2328;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_596 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_596;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_270 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_270;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1935;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1935 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1379 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1379;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2662 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2662;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2718 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2718;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2711;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2712 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2712;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2716 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2716;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2713 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2713;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2715 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2715;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2719 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2719;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2717 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2717;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2714 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2714;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1626 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1626;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2663 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2663;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2661;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1628 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1628;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1747 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1747;
      }
   }
}
