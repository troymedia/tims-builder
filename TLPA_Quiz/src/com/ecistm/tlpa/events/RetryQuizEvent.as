package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class RetryQuizEvent extends Event
	{
		public static const RETRY:String = 'retry';
		[Bindable] public var selection:String;
		public function RetryQuizEvent(type:String, selection:String)
		{
			super(type);
			this.selection = selection;
		}
		
		override public function clone():Event
		{
			return new RetryQuizEvent(type, selection);
		}
	}
}