package com.sulake.habbo.sound.trax
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class TraxSequencer implements IHabboSound
   {
      
      private static const const_111:Number = 44100;
      
      private static const const_220:uint = 8192;
      
      private static const const_1405:uint = 88000;
      
      private static const const_1406:uint = 88000;
      
      private static const const_285:Vector.<Number> = new Vector.<Number>(const_220,true);
       
      
      private var _events:IEventDispatcher;
      
      private var var_556:Number;
      
      private var var_1559:Sound;
      
      private var var_463:SoundChannel;
      
      private var var_1556:TraxData;
      
      private var var_2014:Map;
      
      private var var_1067:Boolean;
      
      private var var_2026:int;
      
      private var var_1558:int = 0;
      
      private var var_215:uint;
      
      private var var_840:Array;
      
      private var var_2015:Boolean;
      
      private var var_684:Boolean = true;
      
      private var var_393:uint;
      
      private var var_1557:uint;
      
      private var var_1039:Boolean;
      
      private var var_841:Boolean;
      
      private var var_839:int;
      
      private var var_462:int;
      
      private var var_1040:int;
      
      private var var_555:int;
      
      private var var_683:Timer;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1557 = uint(30);
         super();
         this._events = param4;
         this.var_2026 = param1;
         this.var_556 = 1;
         this.var_1559 = new Sound();
         this.var_463 = null;
         this.var_2014 = param3;
         this.var_1556 = param2;
         this.var_2014 = param3;
         this.var_1067 = true;
         this.var_215 = 0;
         this.var_840 = [];
         this.var_2015 = false;
         this.var_393 = 0;
         this.var_684 = false;
         this.var_1039 = false;
         this.var_841 = false;
         this.var_839 = 0;
         this.var_462 = 0;
         this.var_1040 = 0;
         this.var_555 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_215 = uint(param1 * const_111);
      }
      
      public function get volume() : Number
      {
         return this.var_556;
      }
      
      public function get position() : Number
      {
         return this.var_215 / const_111;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1067;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1067 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_684;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_462 / const_111;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_462 = int(param1 * const_111);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_839 / const_111;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_839 = int(param1 * const_111);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_1556;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_556 = param1;
         if(this.var_463 != null)
         {
            this.var_463.soundTransform = new SoundTransform(this.var_556);
         }
      }
      
      public function get length() : Number
      {
         return this.var_393 / const_111;
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1067)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_2015)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1556.channels.length)
         {
            _loc2_ = new Map();
            _loc3_ = this.var_1556.channels[_loc1_] as TraxChannel;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc3_.itemCount)
            {
               _loc7_ = _loc3_.getItem(_loc6_).id;
               _loc8_ = this.var_2014.getValue(_loc7_) as TraxSample;
               if(_loc8_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc9_ = this.getSampleBars(_loc8_.length);
               _loc10_ = _loc3_.getItem(_loc6_).length / _loc9_;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc7_ != 0)
                  {
                     _loc2_.add(_loc4_,_loc8_);
                  }
                  _loc5_ += _loc9_;
                  _loc4_ = uint(_loc5_ * const_1406);
                  _loc11_++;
               }
               if(this.var_393 < _loc4_)
               {
                  this.var_393 = _loc4_;
               }
               _loc6_++;
               return false;
            }
            this.var_840.push(_loc2_);
            _loc1_++;
         }
         this.var_2015 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_463 != null)
         {
            this.stopImmediately();
         }
         if(this.var_839 > 0)
         {
            this.var_1039 = true;
            this.var_1040 = 0;
         }
         this.var_841 = false;
         this.var_555 = 0;
         this.var_684 = false;
         this.var_1559.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1558 = param1 * const_111;
         this.var_463 = this.var_1559.play();
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_684)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_462 > 0 && !this.var_684)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         if(this.var_463 != null)
         {
            this.var_463.stop();
            this.var_463 = null;
         }
         this.var_1559.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_683 == null)
         {
            this.var_841 = true;
            this.var_555 = 0;
            this.var_683 = new Timer(this.var_1557 + this.var_462 / (const_111 / 1000),1);
            this.var_683.start();
            this.var_683.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1405);
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc2_:* = [];
         var _loc3_:* = [];
         var _loc4_:* = [];
         var _loc5_:* = null;
         var _loc6_:int = this.var_840.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc2_.push(this.var_840[_loc7_].getKeys());
            _loc10_ = 0;
            while(_loc10_ < _loc2_[_loc7_].length && _loc2_[_loc7_][_loc10_] < this.var_215)
            {
               _loc10_++;
            }
            if(_loc10_ > 0)
            {
               _loc10_--;
               _loc4_.push(_loc10_);
            }
            else
            {
               _loc4_.push(-1);
            }
            _loc11_ = this.var_840[_loc7_].getWithIndex(_loc10_);
            _loc12_ = this.var_215 - _loc2_[_loc7_][_loc10_];
            if(_loc11_ == null)
            {
               _loc3_.push(null);
            }
            else if(_loc11_.id == 0 || _loc12_ < 0)
            {
               _loc3_.push(null);
            }
            else
            {
               _loc5_ = new TraxChannelSample(_loc11_,_loc12_);
               _loc3_.push(_loc5_);
            }
            _loc7_++;
         }
         _loc7_ = _loc6_ - 1;
         while(_loc7_ >= 0)
         {
            _loc5_ = _loc3_[_loc7_] as TraxChannelSample;
            _loc13_ = _loc2_[_loc7_] as Array;
            _loc14_ = _loc4_[_loc7_];
            _loc15_ = const_220;
            if(this.var_393 - this.var_215 < _loc15_)
            {
               _loc15_ = this.var_393 - this.var_215;
            }
            _loc16_ = 0;
            while(_loc16_ < _loc15_)
            {
               _loc17_ = _loc15_;
               if(_loc14_ < _loc13_.length - 1)
               {
                  if(_loc15_ + this.var_215 >= _loc13_[_loc14_ + 1])
                  {
                     _loc17_ = _loc13_[_loc14_ + 1] - this.var_215;
                  }
               }
               if(_loc15_ - _loc16_ < _loc17_)
               {
                  _loc17_ = _loc15_ - _loc16_;
               }
               _loc18_ = 0;
               if(_loc7_ == _loc6_ - 1)
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.setSample(const_285,_loc16_,_loc17_);
                     _loc16_ += _loc17_;
                  }
                  else
                  {
                     _loc18_ = 0;
                     while(_loc18_ < _loc17_)
                     {
                        var _loc21_:*;
                        const_285[_loc21_ = _loc16_++] = 0;
                        _loc18_++;
                     }
                  }
               }
               else
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.addSample(const_285,_loc16_,_loc17_);
                  }
                  _loc16_ += _loc17_;
               }
               if(_loc16_ < _loc15_)
               {
                  if(_loc14_ < this.var_840[_loc7_].length - 1)
                  {
                     _loc19_ = this.var_840[_loc7_].getWithIndex(++_loc14_);
                     if(_loc19_.id == 0)
                     {
                        _loc5_ = null;
                     }
                     else
                     {
                        _loc5_ = new TraxChannelSample(_loc19_,0);
                     }
                  }
                  else
                  {
                     _loc5_ = null;
                  }
               }
            }
            _loc7_--;
         }
         var _loc8_:int = const_220;
         if(this.var_393 - this.var_215 < _loc8_)
         {
            _loc8_ = this.var_393 - this.var_215;
            if(_loc8_ < 0)
            {
               _loc8_ = 0;
            }
         }
         this.writeAudioToOutputStream(param1.data,_loc8_);
         this.var_215 += const_220;
         if(this.var_463 != null)
         {
            this.var_1557 = param1.position / const_111 * 1000 - this.var_463.position;
         }
         var _loc9_:int = this.var_393 < this.var_1558 ? int(this.var_393) : (this.var_1558 > 0 ? int(this.var_1558) : int(this.var_393));
         if(this.var_215 > _loc9_ + this.var_1557 * (const_111 / 1000) && !this.var_684)
         {
            this.var_684 = true;
            _loc20_ = new Timer(2,1);
            _loc20_.start();
            _loc20_.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_215 > _loc9_ - this.var_462 && !this.var_841)
         {
            this.var_1039 = false;
            this.var_841 = true;
            this.var_555 = 0;
         }
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         if(!this.var_1039 && !this.var_841)
         {
            this.writeMixingBufferToOutputStream(param1,param2);
         }
         else
         {
            if(this.var_1039)
            {
               _loc4_ = 1 / this.var_839;
               _loc5_ = this.var_1040 / Number(this.var_839);
               this.var_1040 += const_220;
               if(this.var_1040 > this.var_839)
               {
                  this.var_1039 = false;
               }
            }
            else if(this.var_841)
            {
               _loc4_ = -1 / this.var_462;
               _loc5_ = 1 - this.var_555 / Number(this.var_462);
               this.var_555 += const_220;
               if(this.var_555 > this.var_462)
               {
                  this.var_555 = this.var_462;
               }
            }
            this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc5_,_loc4_);
         }
         var _loc3_:int = param2;
         while(_loc3_ < const_220)
         {
            _loc6_ = 0;
            param1.writeFloat(_loc6_);
            param1.writeFloat(_loc6_);
            _loc3_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(0 * this.volume);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(0 * this.volume * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(0 * this.volume);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_684)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_2026));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_683 != null)
         {
            this.var_683.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_683.reset();
            this.var_683 = null;
         }
      }
   }
}
