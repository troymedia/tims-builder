package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class ResponseTextModel extends Actor
	{
		[Bindable] public var label:String = '';
		[Bindable] public var correct:Boolean = false;
		[Bindable] public var answers:Array = [];
		
		public function ResponseTextModel()
		{
			super();
		}
		
		public function resetModel():void
		{
//			label = null;
//			correct = null;
			
		}
	}
}