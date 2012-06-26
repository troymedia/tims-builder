package org.aaae.iet.timsBuilder.events
{
	import flash.events.Event;
	
	public class AssessmentEvent extends Event
	{
		
		public static const CREATE_NEW_ASSESSMENT:String = 'create';
		public static const UPDATE_ASSESSMENT:String = 'update';
		public static const DELETE_ASSESSMENT:String = 'delete';
		
		public function AssessmentEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new AssessmentEvent(type);
		}
	}
}