package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2742:String;
      
      private var var_2741:String;
      
      private var var_2743:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2742 = param1;
         this.var_2741 = param2;
         this.var_2743 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2742;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2741;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2743;
      }
   }
}
