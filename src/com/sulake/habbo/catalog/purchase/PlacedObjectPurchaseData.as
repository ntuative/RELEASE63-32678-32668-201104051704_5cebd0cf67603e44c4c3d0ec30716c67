package com.sulake.habbo.catalog.purchase
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class PlacedObjectPurchaseData implements IDisposable
   {
       
      
      private var var_825:Boolean = false;
      
      private var var_373:int;
      
      private var _category:int;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_2027:String = "";
      
      private var _x:int = 0;
      
      private var var_152:int = 0;
      
      private var _direction:int = 0;
      
      private var _offerId:int;
      
      private var var_2017:int;
      
      private var var_2018:IProductData;
      
      private var var_655:IFurnitureData;
      
      public function PlacedObjectPurchaseData(param1:int, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int, param8:int, param9:IPurchasableOffer)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_373 = param3;
         this._category = param4;
         this.var_2027 = param5;
         this._x = param6;
         this.var_152 = param7;
         this._direction = param8;
         this.setOfferData(param9);
      }
      
      public function dispose() : void
      {
         this.var_825 = true;
         this.var_2018 = null;
         this.var_655 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_825;
      }
      
      private function setOfferData(param1:IPurchasableOffer) : void
      {
         this._offerId = param1.offerId;
         this.var_2017 = param1.productContainer.firstProduct.productClassId;
         this.var_2018 = param1.productContainer.firstProduct.productData;
         this.var_655 = param1.productContainer.firstProduct.furnitureData;
      }
      
      public function toString() : String
      {
         return [this._roomCategory,this._roomId,this.var_373,this._category,this.var_2027,this._x,this.var_152,this._direction,this._offerId,this.var_2017].toString();
      }
      
      public function get objectId() : int
      {
         return this.var_373;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get wallLocation() : String
      {
         return this.var_2027;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_152;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productClassId() : int
      {
         return this.var_2017;
      }
   }
}
