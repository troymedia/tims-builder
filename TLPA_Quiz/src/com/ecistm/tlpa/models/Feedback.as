package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class Feedback extends Actor
	{
		[Bindable] public var audio:String;
		[Bindable] public var video:String;
		public function Feedback()
		{
			super();
		}
	}
}