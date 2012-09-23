/*
	jFollow v1
	Author: Jarvis Jardin
	Requires: IE7+, FF/O/WK
	Dependency: jQuery 1.4+
*/

(function($){
	
	$.fn.jFollow = function(options){
		
		return this.each(function(){
			
			if( $(this).data("jFollow_api")){
				return;
			};
			
			var opts = $.extend({
				lock: 10
			}, options, {});
			
			var follower = $(this),
				api = {},
				follow = $(opts.follow),
				win = $(window),
				oldcss = {
					position: follower.css("position"),
					top: follower.css("top"),
					left: follower.css("left")
				}
			;
			
			var followfn = function(){
				if(win.scrollTop() >= follow.offset().top - opts.lock){
					
					follower.css({
						position: "fixed",
						top: opts.lock,
						left: follow.offset().left - win.scrollLeft()
					});
					
				}else{
					follower.css(oldcss);
				};
			};
			
			followfn();
			
			win.bind("resize scroll", followfn);
			
			follower.data("jFollow_api", api);
			
		});//end of this.each()
		
	};//end of jFollow
	
})(jQuery);