package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class AnswerSelectionEvent extends Event
	{
		public static const ANSWER_SELECTED:String = 'selected';
		public static const CORRECT_ANSWER:String = 'correctAnswer';
		public static const IMAGE_ANSWER_SELECTED:String = 'imageAnswerSelected';
		
		[Bindable] public var selection:String;
		public function AnswerSelectionEvent(type:String, selection:String='')
		{
			super(type);
			this.selection = selection;
		}
		
		override public function clone():Event
		{
			return new AnswerSelectionEvent(type, selection);
		}
	}
}