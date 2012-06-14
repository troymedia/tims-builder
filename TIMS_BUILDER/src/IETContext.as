package
{
	import com.idxd.components.common.LoginPanel;
	
	import flash.display.DisplayObjectContainer;
	
	import org.aaae.iet.timsBuilder.mediators.LoginPanelMediator;
	import org.aaae.iet.timsBuilder.mediators.MainViewMediator;
	import org.aaae.iet.timsBuilder.views.MainView;
	import org.robotlegs.mvcs.Context;
	
	public class IETContext extends Context
	{
		public function IETContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			mediatorMap.mapView(MainView, MainViewMediator, MainView);
			mediatorMap.mapView(LoginPanel, LoginPanelMediator, LoginPanel);
		}
	}
}