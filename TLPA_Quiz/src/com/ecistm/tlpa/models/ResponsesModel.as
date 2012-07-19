package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class ResponsesModel extends Actor
	{
		public var response:ResponseTextModel;
		public var pool:String;
		public var answers:ArrayCollection = new ArrayCollection();
		public function ResponsesModel()
		{
			super();
		}
	}
}