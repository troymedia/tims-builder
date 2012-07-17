package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class QuestionModel extends Actor
	{
		[Bindable] public var type:String;
		[Bindable] public var text:String;
		[Bindable] public var responses:ArrayCollection;
		[Bindable] public var feedback:FeedbackModel;
		
		public function QuestionModel()
		{
			super();
		}
	}
}