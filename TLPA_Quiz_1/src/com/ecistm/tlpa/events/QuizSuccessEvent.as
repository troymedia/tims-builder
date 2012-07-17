package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class QuizSuccessEvent extends Event
	{
		public static const SUCCESS:String = 'success';
		public function QuizSuccessEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new QuizSuccessEvent(type);
		}
	}
}