$(document).ready(function(){
	
	var cartArray = [];
	
	var checkcart = function(){
		var howmany = $('.cartitem:not(.emptycart)').length
		
		if(howmany === 0){
			
			$('.emptycart').fadeIn();
		};
	};
	
		
	$(window).on('click', '.cartitem .ui-icon-trash', function(){
	
		$(this).parent().parent().fadeOut(function(){
			$(this).remove();
			checkcart();			
		});		
		
	});	
	
	$('#emptyCart').on('click', function(){
			
		$('.cartitem:not(.emptycart)').fadeOut(function(){
			$(this).remove();
			checkcart();
		});
		
		cartArray = [];
		return false;
	});
	
	$('#checkOut').on('click',function(){
	
		if(cartArray.length > 0){
		
			$.ajax({        
		       type: "POST",
		       url: "checkout",
		       data: {cArray: cartArray},
		       success: function() {
		          console.log(cartArray)      
		       }
		    }); 
 		
 		 }else{
	 		 
	 		 alert("Theres Nothing in the Cart");

 		 };
 		 
 		 
 	});

//====================== DRAG =================//	

	$('.product').draggable({
		revert: "invalid",
		cursorAt: {
			top:0, 
			left:0
		},
		helper: function(){
		
			var title = $(this).find('h3').text(),
				price = $(this).find('p').text()
			;
			
			return $(''+
				'<div class="phelper">'+
					'<h4>'+title+'</h4>'+
					'<p>'+price+'</p>'+
				'</div>'
			);
		}
	});
	
//====================== DROP =================//		
	
	$('.cartdropbox').droppable({
		tolerance: "touch",
		hoverClass: "cartdropboxh",
		drop: function(e, ui){
			
			var product = ui.draggable,
				title = product.find('h3').text(),
				price = product.find('#pPrice').text(),
				pID = product.find('.productID').text(),
				item = {	
						item_id:pID,
						item_name: title,
						item_price: price
						 }
			;
			
			
			$(''+
				'<div class="cartitem cf" rel="'+pID+'">'+
					'<span class="ui-state-default trashitem"><span class="ui-icon ui-icon-trash"></span></span>'+
					'<span class="title">"'+title+'"</span>'+
					'<input type="text" class="amount" value="1" />'+
					'<span class="price">"'+price+'"</span><div class="clear"></div>'+
				'</div>'
			).appendTo('.cartitems').hide().fadeIn();
			
			$('.emptycart').hide().fadeOut;
			
			cartArray.push(item);
		}// end of drop object
	});
	
//====================== jFollow =================//	
	
$('#scart').jFollow({
		follow: "#cartfollow",
		lock: 20
	});

//============= SCROLL TOP==========//

	$('#scrollToTop').on('click', function(e){
		
		$(window).jscroll({
			to: 'top',
			duration: 1200,
			//easing: 'easeOutBounce'			
		
		});
		
		return false;
	}); 
	
//=========== jLock ===========//

$('#scart').jlock({
		fromTop: 20
	});
	
//=========== edit in place ==========//
/*
$('.productitem h4').jedit({
	loader: 'images/loader.gif',
	url:'xhr/fake.php',
	type:'post',
	dataType: 'json',
	dataName: 'taskName',
	otherData: {
		taskID: 1
	},
	success: function(){
	
		console.log("YAAAAAAAY");
	}
	 
	
});
$('.productitem .description').jedit({
	loader: 'images/loader.gif',
	url:'xhr/fake.php',
	type:'post',
	dataType: 'json',
	dataName: 'taskDescription',
	entryType: 'textarea',
	otherData: {
		taskID: 1
	},
	success: function(){
	
		console.log("YAAAAAAAY");
	}
	 
	
});


	
*/	

});
