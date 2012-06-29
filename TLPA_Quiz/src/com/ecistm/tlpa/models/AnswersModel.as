package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AnswersModel extends Actor
	{
		[Bindable] public var answers:ArrayCollection = new ArrayCollection();//in the event of questions with multiple answers..
		public function AnswersModel()
		{
			super();
		}
		
		public function registerAnswers(selections:String):void
		{
			answers.addItem(selections);
			//Alert.show('selections: ' + String(answers.length));
		}
		
		public function removeAnswers():void
		{
			answers.removeAll();
		}
	}
}