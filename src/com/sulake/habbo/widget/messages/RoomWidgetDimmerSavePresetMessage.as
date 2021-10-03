package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_690:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2557:int;
      
      private var var_2555:int;
      
      private var _color:uint;
      
      private var var_1274:int;
      
      private var var_2736:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_690);
         this.var_2557 = param1;
         this.var_2555 = param2;
         this._color = param3;
         this.var_1274 = param4;
         this.var_2736 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2557;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2555;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1274;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2736;
      }
   }
}
