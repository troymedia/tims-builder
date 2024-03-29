package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class QuestionPoolModel extends Actor
	{
		[Bindable] public var number:String;
		[Bindable] public var correctResponseAudio:String;
		[Bindable] public var correctResponseText:String;
		[Bindable] public var questionPools:ArrayCollection = new ArrayCollection();
		[Bindable] public var questions:ArrayCollection;
		public function QuestionPoolModel()
		{
			super();
		}
	}
}