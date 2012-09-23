/*
	jscroll v1 alpha
	Author:Jarvis Jardin
	scrolls any element
*/

(function($){

	$.fn.jscroll = function(options){
		
		var opts = $.extend({},$.fn.defaults, options);
		
		return this.each(function(){
			console.log(this);
		
			var context,
				maxY
			;
			
			if(this === window || this === document.body || this === document){
				context = $('html, body');
			}else{
				contest = $(this);
			};
			
			maxY = $(document).height() - $(window).height();
			
			if(typeof opts.to !== 'number' && opts.to !== 'bottom' && opts.to !== 'top'){
				opts.to = $(opts.to).offset().top;
				
			};
			
			
			if(opts.to === 'bottom' || opts.to > maxY){
				opts.to = maxY;
			}else if(opts.to === 'top'){
				opts.to = 0;
			};
			
			context.animate({
				scrollTop: opts.to
			},opts.duration,opts.easing);
					
		})//end each
		
	};//end jscroll
	
	$.fn.defaults = {
		to: 0,
		duration: 1000,
		easing: 'swing',
		
	};//end defaults	
	
})(jQuery); 