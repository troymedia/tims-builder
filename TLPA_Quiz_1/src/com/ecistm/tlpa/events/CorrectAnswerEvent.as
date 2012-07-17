package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class CorrectAnswerEvent extends Event
	{
		public function CorrectAnswerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}