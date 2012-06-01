package org.aaae.timsBuilder.mediators
{
	import com.idxd.components.formUtils.SmartButton;
	
	import flash.events.MouseEvent;
	import flash.profiler.showRedrawRegions;
	
	import mx.events.FlexEvent;
	
	import org.aaae.timsBuilder.events.LoginSuccessEvent;
	import org.aaae.timsBuilder.views.MainView;
	import org.robotlegs.mvcs.Mediator;
	
	public class MainViewMediator extends Mediator
	{
		[Inject]
		public var view:MainView;
		public function MainViewMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addContextListener(LoginSuccessEvent.SUCCESS, onLoginSuccess, LoginSuccessEvent);
			//addViewEv
		}
		
		protected function onLoginSuccess(e:LoginSuccessEvent):void
		{
			view.activateView();
		}
		
		protected function onComplete(e:MouseEvent):void
		{
			view.showAlert();
		}
	}
}