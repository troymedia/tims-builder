package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class ResponseTextModel extends Actor
	{
		[Bindable] public var pool:String = '';
		[Bindable] public var label:String = '';
		[Bindable] public var correct:Boolean = false;
		[Bindable] public var answers:Array = [];
		[Bindable] public var audio:String;
		[Bindable] public var video:String;
		[Bindable] public var image:String;
		[Bindable] public var numIncorrectAnswers:int = 0;
		[Bindable] public var cardinality:String;
		
		public function ResponseTextModel()
		{
			super();
		}
		
		public function resetModel():void
		{
			
		}
	}
}