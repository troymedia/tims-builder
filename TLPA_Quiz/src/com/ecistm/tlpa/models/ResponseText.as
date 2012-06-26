package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class ResponseText extends Actor
	{
		[Bindable] public var text:String;
		[Bindable] public var correct:Boolean;
		public function ResponseText()
		{
			super();
		}
	}
}