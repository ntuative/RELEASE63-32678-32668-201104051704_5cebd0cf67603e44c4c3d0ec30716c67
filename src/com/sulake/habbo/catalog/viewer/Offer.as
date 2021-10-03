package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1603:String = "pricing_model_unknown";
      
      public static const const_359:String = "pricing_model_single";
      
      public static const const_409:String = "pricing_model_multi";
      
      public static const const_507:String = "pricing_model_bundle";
      
      public static const PRICE_TYPE_NONE:String = "price_type_none";
      
      public static const const_747:String = "price_type_credits";
      
      public static const const_1192:String = "price_type_activitypoints";
      
      public static const const_1176:String = "price_type_credits_and_activitypoints";
       
      
      private var var_719:String;
      
      private var var_1093:String;
      
      private var _offerId:int;
      
      private var var_1655:String;
      
      private var var_1094:int;
      
      private var var_1095:int;
      
      private var _activityPointType:int;
      
      private var var_362:ICatalogPage;
      
      private var var_594:IProductContainer;
      
      private var var_1343:String = "";
      
      private var var_2202:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1655 = param2;
         this.var_1094 = param3;
         this.var_1095 = param4;
         this._activityPointType = param5;
         this.var_362 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get extraParameter() : String
      {
         return this.var_1343;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1343 = param1;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_362;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1655;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1094;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1095;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_594;
      }
      
      public function get pricingModel() : String
      {
         return this.var_719;
      }
      
      public function get priceType() : String
      {
         return this.var_1093;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2202;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1655 = "";
         this.var_1094 = 0;
         this.var_1095 = 0;
         this._activityPointType = 0;
         this.var_362 = null;
         if(this.var_594 != null)
         {
            this.var_594.dispose();
            this.var_594 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_719)
         {
            case const_359:
               this.var_594 = new SingleProductContainer(this,param1);
               break;
            case const_409:
               this.var_594 = new MultiProductContainer(this,param1);
               break;
            case const_507:
               this.var_594 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_719);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_719 = const_359;
            }
            else
            {
               this.var_719 = const_409;
            }
         }
         else if(param1.length > 1)
         {
            this.var_719 = const_507;
         }
         else
         {
            this.var_719 = const_1603;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1094 > 0 && this.var_1095 > 0)
         {
            this.var_1093 = const_1176;
         }
         else if(this.var_1094 > 0)
         {
            this.var_1093 = const_747;
         }
         else if(this.var_1095 > 0)
         {
            this.var_1093 = const_1192;
         }
         else
         {
            this.var_1093 = PRICE_TYPE_NONE;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_362.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_594.products)
         {
            _loc4_ = this.var_362.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
