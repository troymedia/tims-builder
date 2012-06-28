package com.ecistm.tlpa.events
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class SearchResultEvent extends Event
	{
		public static const FETCH_DATA:String = 'fetch';
		public static const RECEIVED:String = 'received';
		public static const POPULATE:String = 'populate';
//		public static const ENTERPRISE_SERVICE_RECEIVED:String = 'enterprise';
//		public static const LABS_SERVICE_RECEIVED:String = 'labs';
//		public static const UPDATE_VIEW:String = 'updateView';
		
		private var _results:*;
		
		public function get results():*
		{
			return _results;
		}
		
		public function SearchResultEvent(type:String, results:*=null)
		{
			super(type);
			_results = results;
		}
		
		override public function clone():Event
		{
			return new SearchResultEvent(type, results);
		}
	}
}