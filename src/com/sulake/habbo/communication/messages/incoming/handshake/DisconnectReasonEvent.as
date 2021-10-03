package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1872:int = 0;
      
      public static const const_1605:int = 1;
      
      public static const const_1632:int = 2;
      
      public static const const_1839:int = 3;
      
      public static const const_1848:int = 4;
      
      public static const const_1821:int = 5;
      
      public static const const_1663:int = 10;
      
      public static const const_1945:int = 11;
      
      public static const const_1941:int = 12;
      
      public static const const_1802:int = 13;
      
      public static const const_1898:int = 16;
      
      public static const const_1885:int = 17;
      
      public static const const_1777:int = 18;
      
      public static const const_1888:int = 19;
      
      public static const const_1889:int = 20;
      
      public static const const_1977:int = 22;
      
      public static const const_1786:int = 23;
      
      public static const const_1803:int = 24;
      
      public static const const_1972:int = 25;
      
      public static const const_1950:int = 26;
      
      public static const const_1937:int = 27;
      
      public static const const_1828:int = 28;
      
      public static const const_1920:int = 29;
      
      public static const const_1798:int = 100;
      
      public static const const_1897:int = 101;
      
      public static const const_1842:int = 102;
      
      public static const const_1921:int = 103;
      
      public static const const_1865:int = 104;
      
      public static const const_1882:int = 105;
      
      public static const const_1943:int = 106;
      
      public static const const_1863:int = 107;
      
      public static const const_1959:int = 108;
      
      public static const const_1846:int = 109;
      
      public static const const_1776:int = 110;
      
      public static const const_1951:int = 111;
      
      public static const const_1778:int = 112;
      
      public static const const_1866:int = 113;
      
      public static const const_1855:int = 114;
      
      public static const const_1965:int = 115;
      
      public static const const_1964:int = 116;
      
      public static const const_1963:int = 117;
      
      public static const const_1923:int = 118;
      
      public static const const_1908:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1605:
            case const_1663:
               return "banned";
            case const_1632:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
