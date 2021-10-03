package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_696:String = "RWUAM_WHISPER_USER";
      
      public static const const_828:String = "RWUAM_IGNORE_USER";
      
      public static const const_810:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_520:String = "RWUAM_KICK_USER";
      
      public static const const_680:String = "RWUAM_BAN_USER";
      
      public static const const_652:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_822:String = "RWUAM_RESPECT_USER";
      
      public static const const_776:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_922:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_912:String = "RWUAM_START_TRADING";
      
      public static const const_899:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_598:String = "RWUAM_KICK_BOT";
      
      public static const const_829:String = "RWUAM_REPORT";
      
      public static const const_587:String = "RWUAM_PICKUP_PET";
      
      public static const const_1608:String = "RWUAM_TRAIN_PET";
      
      public static const const_480:String = " RWUAM_RESPECT_PET";
      
      public static const const_414:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_722:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
