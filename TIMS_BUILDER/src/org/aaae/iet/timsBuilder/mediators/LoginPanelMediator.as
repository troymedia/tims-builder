package org.aaae.iet.timsBuilder.mediators
{
	import com.idxd.components.buttons.LoginButton;
	import com.idxd.components.common.LoginPanel;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.aaae.iet.timsBuilder.events.LoginSuccessEvent;
	import org.robotlegs.mvcs.Mediator;
	
	public class LoginPanelMediator extends Mediator
	{
		[Inject]
		public var view:LoginPanel;
		public function LoginPanelMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.loginBtn, MouseEvent.CLICK, onClick);
			//addViewListener(MouseEvent.CLICK, function():void { view.doLogin()});
		}
		
		protected function onClick(e:MouseEvent):void
		{
			view.doLogin();
			dispatch(new LoginSuccessEvent(LoginSuccessEvent.SUCCESS));
		}
	}
}