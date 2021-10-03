package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1086:int = 1;
      
      public static const const_876:int = 2;
      
      public static const const_812:int = 3;
      
      public static const const_1664:int = 4;
       
      
      private var _index:int;
      
      private var var_2419:String;
      
      private var var_2420:String;
      
      private var var_2417:Boolean;
      
      private var var_2416:String;
      
      private var var_1012:String;
      
      private var var_2418:int;
      
      private var var_2120:int;
      
      private var _type:int;
      
      private var var_2271:String;
      
      private var var_929:GuestRoomData;
      
      private var var_928:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2419 = param1.readString();
         this.var_2420 = param1.readString();
         this.var_2417 = param1.readInteger() == 1;
         this.var_2416 = param1.readString();
         this.var_1012 = param1.readString();
         this.var_2418 = param1.readInteger();
         this.var_2120 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1086)
         {
            this.var_2271 = param1.readString();
         }
         else if(this._type == const_812)
         {
            this.var_928 = new PublicRoomData(param1);
         }
         else if(this._type == const_876)
         {
            this.var_929 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_929 != null)
         {
            this.var_929.dispose();
            this.var_929 = null;
         }
         if(this.var_928 != null)
         {
            this.var_928.dispose();
            this.var_928 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2419;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2420;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2417;
      }
      
      public function get picText() : String
      {
         return this.var_2416;
      }
      
      public function get picRef() : String
      {
         return this.var_1012;
      }
      
      public function get folderId() : int
      {
         return this.var_2418;
      }
      
      public function get tag() : String
      {
         return this.var_2271;
      }
      
      public function get userCount() : int
      {
         return this.var_2120;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_929;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_928;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1086)
         {
            return 0;
         }
         if(this.type == const_876)
         {
            return this.var_929.maxUserCount;
         }
         if(this.type == const_812)
         {
            return this.var_928.maxUsers;
         }
         return 0;
      }
   }
}
