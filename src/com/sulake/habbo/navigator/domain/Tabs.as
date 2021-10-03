package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_363:int = 1;
      
      public static const const_242:int = 2;
      
      public static const const_316:int = 3;
      
      public static const const_421:int = 4;
      
      public static const const_248:int = 5;
      
      public static const const_389:int = 1;
      
      public static const const_765:int = 2;
      
      public static const const_814:int = 3;
      
      public static const const_785:int = 4;
      
      public static const const_245:int = 5;
      
      public static const const_694:int = 6;
      
      public static const const_762:int = 7;
      
      public static const const_258:int = 8;
      
      public static const const_405:int = 9;
      
      public static const const_1966:int = 10;
      
      public static const const_871:int = 11;
      
      public static const const_553:int = 12;
       
      
      private var var_431:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_431 = new Array();
         this.var_431.push(new Tab(this._navigator,const_363,const_553,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_586));
         this.var_431.push(new Tab(this._navigator,const_242,const_389,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_586));
         this.var_431.push(new Tab(this._navigator,const_421,const_871,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1232));
         this.var_431.push(new Tab(this._navigator,const_316,const_245,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_586));
         this.var_431.push(new Tab(this._navigator,const_248,const_258,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_689));
         this.setSelectedTab(const_363);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_421;
      }
      
      public function get tabs() : Array
      {
         return this.var_431;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_431)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
