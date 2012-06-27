package com.ecistm.tlpa.models
{
	import org.robotlegs.mvcs.Actor;
	
	public class FeedbackModel extends Actor
	{
		[Bindable] public var audio:String;
		[Bindable] public var video:String;
		public function FeedbackModel()
		{
			super();
		}
	}
}