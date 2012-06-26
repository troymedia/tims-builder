package
{
	import com.ecistm.tlpa.views.QuizView;
	import com.ecistm.tlpa.commands.*;
	import com.ecistm.tlpa.mediators.*;
	import com.ecistm.tlpa.services.LessonsService;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	
	public class TLPAQuizContext extends Context
	{
		public function TLPAQuizContext()
		{
			
		}
		
		override public function startup():void
		{
			super.startup();
			//mediators
			//mediatorMap.mapView(QuizView, QuizViewMediator, QuizView);
			
			//commands
			
			injector.mapSingleton(LessonsService);
		}
	}
}