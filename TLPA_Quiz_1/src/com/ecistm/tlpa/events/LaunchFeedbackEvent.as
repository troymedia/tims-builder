package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class LaunchFeedbackEvent extends Event
	{
		public static const LAUNCH:String = 'launch';
		
		protected var state:String;
		
		public function LaunchFeedbackEvent(type:String, state:String='')
		{
			super(type);
			this.state = state;
		}
		
		override public function clone():Event
		{
			return new LaunchFeedbackEvent(type, state);
		}
	}
}