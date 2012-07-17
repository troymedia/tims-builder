package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Actor;
	
	public class ImageAnswersModel extends Actor
	{
		[Bindable] public var imageAnswers:ArrayCollection = new ArrayCollection();
		[Bindable] public var registeredAnswer:String = '';
		[Bindable] public var correct:Boolean;
		public function ImageAnswersModel()
		{
			super();
		}
		
		public function registerImageAnswers(selections:String):void
		{
			imageAnswers.addItem(selections);
			Alert.show('selections: ' + String(imageAnswers.length));
		}
		
		public function removeImageAnswers():void
		{
			imageAnswers.removeAll();
		}
	}
}