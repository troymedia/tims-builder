package com.ecistm.tlpa.components
{
	import flash.media.*;
	import flash.net.URLRequest;

	public class SoundPlayer
	{
		public var sound:Sound = new Sound();
		[Bindable] public var url:String;
		public var request:URLRequest = new URLRequest();
		protected var channel:SoundChannel;
		
		public function SoundPlayer()
		{

		}
		
		public function play():void
		{
			request = new URLRequest(url);
			channel = new SoundChannel();
			sound.load(request);
			channel = sound.play();
		}
		
		public function stop():void
		{
			channel.stop();
		}
	}
}