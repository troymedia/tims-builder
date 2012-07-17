package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	public class CorrectAnswerEvent extends Event
	{
		public static const CORRECT:String = 'correct';
		
		public var detail:int;
		public function CorrectAnswerEvent(type:String, detail:int=0)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new CorrectAnswerEvent(type, detail);
		}
	}
}