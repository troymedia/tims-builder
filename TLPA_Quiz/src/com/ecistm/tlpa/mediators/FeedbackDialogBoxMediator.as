package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FeedbackDialogBoxMediator extends Mediator
	{
		[Inject]
		public var view:FeedbackDialogBox;
		
		public function FeedbackDialogBoxMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			
		}
	}
}