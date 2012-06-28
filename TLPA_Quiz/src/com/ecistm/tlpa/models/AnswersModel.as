package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AnswersModel extends Actor
	{
		[Bindable] public var answers:ArrayCollection;//in the event of questions with multiple answers..
		public function AnswersModel()
		{
			super();
		}
		
		public function registerAnswers(selections:String):void
		{
//			for each(var obj:Object in selections)
				answers.addItem(selections);
		}
		
		public function removeAnswers():void
		{
			answers.removeAll();
		}

	}
}