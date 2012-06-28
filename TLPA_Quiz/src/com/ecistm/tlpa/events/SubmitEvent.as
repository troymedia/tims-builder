package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class SubmitEvent extends Event
	{
		public static const SUBMIT_ANSWERS:String = 'submit';
		public static const VALIDATE_ANSWERS:String = 'validate';
	
		public function SubmitEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new SubmitEvent(type);
		}
	}
}