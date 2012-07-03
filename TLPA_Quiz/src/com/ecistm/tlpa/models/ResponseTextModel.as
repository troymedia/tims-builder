package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class ResponseTextModel extends Actor
	{
		[Bindable] public var label:String = '';
		[Bindable] public var correct:Boolean = false;
		[Bindable] public var answers:Array = [];
		[Bindable] public var audio:String;
		[Bindable] public var video:String;
		[Bindable] public var image:String;
		
		public function ResponseTextModel()
		{
			super();
		}
		
		public function resetModel():void
		{
			
		}
	}
}