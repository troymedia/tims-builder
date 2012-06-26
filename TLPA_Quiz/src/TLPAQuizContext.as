package
{
	import com.ecistm.tlpa.QuizView;
	import com.ecistm.tlpa.mediators.QuizViewMediator;
	import com.ecistm.tlpa.services.LessonsService;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	
	public class TLPAQuizContext extends Context
	{
		public function TLPAQuizContext()
		{
			
		}
		
		override public function startup():void
		{
			//mediators
			mediatorMap.mapView(QuizView, QuizViewMediator, QuizView);
			
			injector.mapSingleton(LessonsService);
		}
	}
}