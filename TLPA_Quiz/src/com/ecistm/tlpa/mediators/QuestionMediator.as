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
			view.registeredAnswer = view.questionPool.selectedValue as String;
			view.registerSelection();
			dispatch(new SubmitEvent(SubmitEvent.REGISTER_ANSWERS, 'MC', e.currentTarget.selection, view.registeredAnswer));//convert to function that retrieves necessary data
		}
		
		protected function onSubmit(e:SubmitEvent):void
		{
			
			//Alert.show(e.type);
		}
		
	}
}