package com.ecistm.tlpa.events
{
	import com.ecistm.tlpa.components.ResponseWithImage;
	
	import flash.events.Event;
	
	public class AnswerSelectionEvent extends Event
	{
		public static const ANSWER_SELECTED:String = 'selected';
		public static const CORRECT_ANSWER:String = 'correctAnswer';
		public static const IMAGE_ANSWER_SELECTED:String = 'imageAnswerSelected';
		
		[Bindable] public var selection:String;
		[Bindable] public var imageAnswer:ResponseWithImage;
		public function AnswerSelectionEvent(type:String, selection:String='', imageAnswer:ResponseWithImage=null)
		{
			super(type);
			this.selection = selection;
			this.imageAnswer = imageAnswer;
		}
		
		override public function clone():Event
		{
			return new AnswerSelectionEvent(type, selection, imageAnswer);
		}
	}
}