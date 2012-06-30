package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class AnswerSelectionEvent extends Event
	{
		public static const ANSWER_SELECTED:String = 'selected';
		public function AnswerSelectionEvent(type:String)
		{
			super(type);
		}
	}
}