(function($){

	$.fn.jlock = function(options){
	
		var opts =$.extend({},$.fn.jlock.defaults,options);
		
		return this.each(function(){
			var lock = $(this),
				oldcss = {
					position: lock.css('position'),
					top: lock.css('top'),
					left: lock.css('left')
				},
				ph = $('<div class="jlock-placeholder"></div>')
					.insertBefore(lock)
					.css(oldcss)
					.css({
						width: 0,
						height: 0,
						padding: 0,
						margin:0,
						display: "block"
					}),
				win = $(window)
			;
			
			var checkLock = function(){
				var winY = win.scrollTop(),
					winX = win.scrollLeft(),
					phY = ph.offset().top,
					phX = ph.offset().left,
					hasCrossed	
				;	
				
				if(winY >= phY - opts.fromTop){
				
					
					lock.css({
						position: "fixed",
						top: opts.fromTop,
						left:phX - winX
						
					});
				}else{
					lock.css(oldcss);
				
				};

			};
						
			win.on('scroll resize', checkLock);
			
			checkLock();

			
			
		});
	};//end jlock
	
	$.fn.jlock.defaults = {
		fromTop: 0
	};//end defaults

})(jQuery);