package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class RetryQuizEvent extends Event
	{
		public static const RETRY:String = 'retry';
		public function RetryQuizEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new RetryQuizEvent(type);
		}
	}
}