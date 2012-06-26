package org.aaae.iet.timsBuilder.mediators
{
	import com.idxd.components.buttons.AddButton;
	
	import flash.events.MouseEvent;
	
	import org.aaae.iet.timsBuilder.events.AssessmentEvent;
	import org.robotlegs.mvcs.Mediator;
	
	public class AddButtonMediator extends Mediator
	{
		[Inject]
		public var view:AddButton;
		public function AddButtonMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(MouseEvent.CLICK, onClick, MouseEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			dispatch(new AssessmentEvent(AssessmentEvent.CREATE_NEW_ASSESSMENT));
		}
	}
}