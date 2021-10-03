package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_952:BigInteger;
      
      private var var_2632:BigInteger;
      
      private var var_2021:BigInteger;
      
      private var var_2813:BigInteger;
      
      private var var_1565:BigInteger;
      
      private var var_2020:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1565 = param1;
         this.var_2020 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1565.toString() + ",generator: " + this.var_2020.toString() + ",secret: " + param1);
         this.var_952 = new BigInteger();
         this.var_952.fromRadix(param1,param2);
         this.var_2632 = this.var_2020.modPow(this.var_952,this.var_1565);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2021 = new BigInteger();
         this.var_2021.fromRadix(param1,param2);
         this.var_2813 = this.var_2021.modPow(this.var_952,this.var_1565);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2632.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2813.toRadix(param1);
      }
   }
}
