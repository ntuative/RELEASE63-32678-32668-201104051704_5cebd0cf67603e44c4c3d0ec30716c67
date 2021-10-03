package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_745:TileHeightMap = null;
      
      private var var_1144:LegacyWallGeometry = null;
      
      private var var_1143:RoomCamera = null;
      
      private var var_747:SelectedRoomObjectData = null;
      
      private var var_746:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_506:Map;
      
      private var var_505:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_506 = new Map();
         this.var_505 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1144 = new LegacyWallGeometry();
         this.var_1143 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_745;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_745 != null)
         {
            this.var_745.dispose();
         }
         this.var_745 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1144;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1143;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_747;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_747 != null)
         {
            this.var_747.dispose();
         }
         this.var_747 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_746;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_746 != null)
         {
            this.var_746.dispose();
         }
         this.var_746 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_745 != null)
         {
            this.var_745.dispose();
            this.var_745 = null;
         }
         if(this.var_1144 != null)
         {
            this.var_1144.dispose();
            this.var_1144 = null;
         }
         if(this.var_1143 != null)
         {
            this.var_1143.dispose();
            this.var_1143 = null;
         }
         if(this.var_747 != null)
         {
            this.var_747.dispose();
            this.var_747 = null;
         }
         if(this.var_746 != null)
         {
            this.var_746.dispose();
            this.var_746 = null;
         }
         if(this.var_506 != null)
         {
            this.var_506.dispose();
            this.var_506 = null;
         }
         if(this.var_505 != null)
         {
            this.var_505.dispose();
            this.var_505 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_506.remove(param1.id);
            this.var_506.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_506.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_506.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_506.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_505.remove(param1.id);
            this.var_505.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_505.length > 0)
         {
            return this.getWallItemDataWithId(this.var_505.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_505.remove(param1);
      }
   }
}
