package org.aaae.iet.timsBuilder.events
{
	import flash.events.Event;
	
	public class LoginSuccessEvent extends Event
	{
		public static const SUCCESS:String = 'success';
		public function LoginSuccessEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return new LoginSuccessEvent(type);
		}
	}
}