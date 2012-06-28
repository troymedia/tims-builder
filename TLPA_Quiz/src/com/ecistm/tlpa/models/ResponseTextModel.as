package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class ResponseTextModel extends Actor
	{
		[Bindable] public var text:String;
		[Bindable] public var correct:Boolean;
		[Bindable] public var answers:Array = [];
		
		public function ResponseTextModel()
		{
			super();
		}
	}
}