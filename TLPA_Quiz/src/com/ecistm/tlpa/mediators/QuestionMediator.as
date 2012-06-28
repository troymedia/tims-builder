package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.views.Question;
	
	import mx.controls.Alert;
	import mx.events.ItemClickEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class QuestionMediator extends Mediator
	{
		[Inject]
		public var view:Question;
		
		public function QuestionMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.questionPool, ItemClickEvent.ITEM_CLICK, onItemClick, ItemClickEvent);
		}
		
		protected function onItemClick(e:ItemClickEvent):void
		{
			dispatch(new SubmitEvent(SubmitEvent.SUBMIT_ANSWERS));
		}
		
		protected function onSubmit(e:SubmitEvent):void
		{
			
			//Alert.show(e.type);
		}
		
	}
}