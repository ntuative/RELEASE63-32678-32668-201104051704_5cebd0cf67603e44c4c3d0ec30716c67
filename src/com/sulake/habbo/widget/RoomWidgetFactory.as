package com.sulake.habbo.widget
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.widget.avatarinfo.AvatarInfoWidget;
   import com.sulake.habbo.widget.chatinput.RoomChatInputWidget;
   import com.sulake.habbo.widget.chooser.FurniChooserWidget;
   import com.sulake.habbo.widget.chooser.UserChooserWidget;
   import com.sulake.habbo.widget.doorbell.DoorbellWidget;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.friendrequest.FriendRequestWidget;
   import com.sulake.habbo.widget.furniture.clothingchange.ClothingChangeFurnitureWidget;
   import com.sulake.habbo.widget.furniture.credit.CreditFurniWidget;
   import com.sulake.habbo.widget.furniture.dimmer.DimmerFurniWidget;
   import com.sulake.habbo.widget.furniture.ecotronbox.EcotronBoxFurniWidget;
   import com.sulake.habbo.widget.furniture.petpackage.PetPackageFurniWidget;
   import com.sulake.habbo.widget.furniture.placeholder.PlaceholderWidget;
   import com.sulake.habbo.widget.furniture.present.PresentFurniWidget;
   import com.sulake.habbo.widget.furniture.stickie.StickieFurniWidget;
   import com.sulake.habbo.widget.furniture.teaser.TeaserFurniWidget;
   import com.sulake.habbo.widget.furniture.trophy.TrophyFurniWidget;
   import com.sulake.habbo.widget.furniture.welcomegift.WelcomeGiftWidget;
   import com.sulake.habbo.widget.infostand.InfostandWidget;
   import com.sulake.habbo.widget.loadingbar.LoadingBarWidget;
   import com.sulake.habbo.widget.memenu.MeMenuWidget;
   import com.sulake.habbo.widget.notification.UserNotificationWidget;
   import com.sulake.habbo.widget.poll.PollWidget;
   import com.sulake.habbo.widget.poll.VoteWidget;
   import com.sulake.habbo.widget.purse.PurseWidget;
   import com.sulake.habbo.widget.roomchat.RoomChatWidget;
   import com.sulake.habbo.widget.roominfo.RoomInfoWidget;
   import com.sulake.habbo.widget.roomqueue.RoomQueueWidget;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboSoundManager;
   import iid.IIDHabboWindowManager;
   
   public class RoomWidgetFactory extends Component implements IRoomWidgetFactory
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2908:IAssetLibrary;
      
      private var var_67:IHabboLocalizationManager;
      
      private var var_165:IHabboConfigurationManager;
      
      private var _catalog:IHabboCatalog;
      
      private var _inventory:IHabboInventory;
      
      private var var_345:IHabboSoundManager;
      
      private var _navigator:IHabboNavigator;
      
      private var var_2451:int = 0;
      
      public function RoomWidgetFactory(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2908 = param1.root.assets;
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
      }
      
      override public function dispose() : void
      {
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_67)
         {
            this.var_67.release(new IIDHabboLocalizationManager());
            this.var_67 = null;
         }
         if(this.var_165)
         {
            this.var_165.release(new IIDHabboConfigurationManager());
            this.var_165 = null;
         }
         if(this.var_345)
         {
            this.var_345.release(new IIDHabboSoundManager());
            this.var_345 = null;
         }
         if(this._catalog)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_67 = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_165 = param2 as IHabboConfigurationManager;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._inventory = param2 as IHabboInventory;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_345 = param2 as IHabboSoundManager;
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._navigator = param2 as IHabboNavigator;
      }
      
      public function createWidget(param1:String) : IRoomWidget
      {
         var _loc2_:* = null;
         if(this._windowManager == null)
         {
            return null;
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_365:
               _loc2_ = new RoomChatWidget(this._windowManager,assets,this.var_67,this.var_165,this.var_2451++,this);
               break;
            case RoomWidgetEnum.CHAT_INPUT_WIDGET:
               _loc2_ = new RoomChatInputWidget(this._windowManager,assets,this.var_67,this.var_165,this);
               break;
            case RoomWidgetEnum.const_546:
               _loc2_ = new InfostandWidget(this._windowManager,assets,this.var_67,this.var_165,this._catalog,this.var_345);
               break;
            case RoomWidgetEnum.const_527:
               _loc2_ = new MeMenuWidget(this._windowManager,assets,this.var_67,events,this.var_165);
               break;
            case RoomWidgetEnum.const_649:
               _loc2_ = new PlaceholderWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_581:
               _loc2_ = new CreditFurniWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_461:
               _loc2_ = new StickieFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_502:
               _loc2_ = new PresentFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_543:
               _loc2_ = new TrophyFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_497:
               _loc2_ = new TeaserFurniWidget(this._windowManager,assets,this.var_67,this.var_165,this._inventory);
               break;
            case RoomWidgetEnum.const_456:
               _loc2_ = new EcotronBoxFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_596:
               _loc2_ = new PetPackageFurniWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_123:
               _loc2_ = new DoorbellWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_570:
               _loc2_ = new LoadingBarWidget(this._windowManager,assets,this.var_67,this.var_165);
               break;
            case RoomWidgetEnum.const_931:
               _loc2_ = new RoomQueueWidget(this._windowManager,assets,this.var_67,this.var_165);
               break;
            case RoomWidgetEnum.const_112:
               _loc2_ = new VoteWidget(this._windowManager,assets,this.var_67,this.var_165);
               break;
            case RoomWidgetEnum.const_404:
               _loc2_ = new PollWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_312:
               _loc2_ = new UserChooserWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_547:
               _loc2_ = new FurniChooserWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_454:
               _loc2_ = new DimmerFurniWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_150:
               _loc2_ = new FriendRequestWidget(this._windowManager,assets,this.var_67,this);
               break;
            case RoomWidgetEnum.const_515:
               _loc2_ = new ClothingChangeFurnitureWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_843:
               _loc2_ = new RoomWidgetBase(this._windowManager);
               break;
            case RoomWidgetEnum.const_119:
               _loc2_ = new UserNotificationWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_428:
               _loc2_ = new PurseWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_125:
               _loc2_ = new AvatarInfoWidget(this._windowManager,assets,this.var_67,this);
               break;
            case RoomWidgetEnum.const_533:
               _loc2_ = new WelcomeGiftWidget(this._windowManager,assets,this.var_67);
               break;
            case RoomWidgetEnum.const_1083:
               break;
            case RoomWidgetEnum.const_494:
               _loc2_ = new RoomInfoWidget(this);
         }
         return _loc2_;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get localizations() : IHabboLocalizationManager
      {
         return this.var_67;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this.var_165;
      }
      
      public function get navigator() : IHabboNavigator
      {
         return this._navigator;
      }
   }
}
