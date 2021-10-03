package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   
   public class TraxPreviewCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_345:IHabboSoundManager;
      
      private var var_420:IButtonWindow;
      
      private var var_2234:int = -1;
      
      public function TraxPreviewCatalogWidget(param1:IWindowContainer, param2:IHabboSoundManager)
      {
         super(param1);
         this.var_420 = _window.findChildByName("listen") as IButtonWindow;
         Logger.log("Trax listener found button: " + this.var_420);
         if(this.var_420 != null)
         {
            this.var_420.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClickPlay);
            this.var_420.disable();
         }
         this.var_345 = param2;
      }
      
      override public function dispose() : void
      {
         if(this.var_420 != null)
         {
            this.var_420.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClickPlay);
         }
         if(this.var_345 != null && this.var_345.musicController != null)
         {
            this.var_345.musicController.stop(HabboMusicPrioritiesEnum.const_656);
            this.var_345 = null;
         }
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         if(page.offers.length == 0)
         {
            return false;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         return true;
      }
      
      override public function closed() : void
      {
         super.closed();
         if(this.var_345 != null && this.var_345.musicController != null)
         {
            this.var_345.musicController.stop(HabboMusicPrioritiesEnum.const_656);
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         if(param1 == null || param1.offer == null)
         {
            return;
         }
         var _loc2_:Boolean = false;
         var _loc3_:IProduct = param1.offer.productContainer.firstProduct;
         if(_loc3_.extraParam.length > 0)
         {
            this.var_2234 = parseInt(_loc3_.extraParam);
            _loc2_ = true;
         }
         if(this.var_420 != null)
         {
            if(_loc2_)
            {
               this.var_420.enable();
            }
            else
            {
               this.var_420.disable();
            }
         }
      }
      
      private function onClickPlay(param1:WindowMouseEvent) : void
      {
         if(this.var_345 != null && this.var_345.musicController != null)
         {
            this.var_345.musicController.playSong(this.var_2234,HabboMusicPrioritiesEnum.const_656,-1,15,0,2);
         }
      }
   }
}
