package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_381:int;
      
      private var var_765:Boolean;
      
      private var var_946:String;
      
      private var _ownerName:String;
      
      private var var_2138:int;
      
      private var var_2120:int;
      
      private var var_2842:int;
      
      private var var_1679:String;
      
      private var var_2839:int;
      
      private var var_2695:Boolean;
      
      private var var_769:int;
      
      private var var_1527:int;
      
      private var var_2840:String;
      
      private var var_872:Array;
      
      private var var_2841:RoomThumbnailData;
      
      private var var_2143:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_872 = new Array();
         super();
         this.var_381 = param1.readInteger();
         this.var_765 = param1.readBoolean();
         this.var_946 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2138 = param1.readInteger();
         this.var_2120 = param1.readInteger();
         this.var_2842 = param1.readInteger();
         this.var_1679 = param1.readString();
         this.var_2839 = param1.readInteger();
         this.var_2695 = param1.readBoolean();
         this.var_769 = param1.readInteger();
         this.var_1527 = param1.readInteger();
         this.var_2840 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_872.push(_loc4_);
            _loc3_++;
         }
         this.var_2841 = new RoomThumbnailData(param1);
         this.var_2143 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_872 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_381;
      }
      
      public function get event() : Boolean
      {
         return this.var_765;
      }
      
      public function get roomName() : String
      {
         return this.var_946;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2138;
      }
      
      public function get userCount() : int
      {
         return this.var_2120;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2842;
      }
      
      public function get description() : String
      {
         return this.var_1679;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2839;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2695;
      }
      
      public function get score() : int
      {
         return this.var_769;
      }
      
      public function get categoryId() : int
      {
         return this.var_1527;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2840;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2841;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2143;
      }
   }
}
