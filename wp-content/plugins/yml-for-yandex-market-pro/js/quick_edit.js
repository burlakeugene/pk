(function($) {
	console.log('Подключён quick_edit.js');
	// we create a copy of the WP inline edit post function
	// https://opttour.ru/web/wordpress/byistroe-redaktirovanie-zapisi/
	var $wp_inline_edit = inlineEditPost.edit;
	// and then we overwrite the function with our own code
	inlineEditPost.edit = function(id) {
		// "call" the original WP edit function
		// we don't want to leave WordPress hanging
		$wp_inline_edit.apply(this, arguments);
 
		// now we take care of our business
 
		// get the post ID
		var $post_id = 0;
	   	if ( typeof( id ) == 'object' ) {			
			$post_id = parseInt(this.getId(id)); // получили id поста
			console.log('$post_id = ' + $post_id);
		}
		if ($post_id > 0) {
			// get the release date
			var $vygruzhat = $('#vygruzhat-' + $post_id ).text();
			if ($vygruzhat == 'on') { 
				$('#edit-'+$post_id+' input[name="vygruzhat"]').prop('checked', true);
				console.log('vygruzhat true; $post_id = ' + $post_id);	
			} else {
				$('#edit-'+$post_id+' input[name="vygruzhat"]').prop('checked', false);
				console.log('vygruzhat false; $post_id = ' + $post_id);
			}
			var $yfymp_removefromyml = $('#yfymp_removefromyml-' + $post_id ).text();
			if ($yfymp_removefromyml == 'on') { 
				$('#edit-'+$post_id+' input[name="yfymp_removefromyml"]').prop('checked', true);
				console.log('yfymp_removefromyml true; $post_id = ' + $post_id);
			} else {
				$('#edit-'+$post_id+' input[name="yfymp_removefromyml"]').prop('checked', false);
				console.log('yfymp_removefromyml false; $post_id = ' + $post_id);
			}	
		}
	};
 })(jQuery);