package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class LessonModel extends Actor
	{
		[Bindable] public var id:String;
		[Bindable] public var questionPools:ArrayCollection = new ArrayCollection();
		public function LessonModel()
		{
			super();
		}
	}
}