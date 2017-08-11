$(document).ready(function() {
			var html = 		'<div class="content__window" id="window">'+
										'<ul>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
												'<a data-method="get" href="/"><span>Edit profile</span>'+
												'</a>'+
											'</div>'+
										'</li>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
											'<a data-method="get" href="/"><span>Travel Credit</span>'+
											'</a>'+
											'</div>'+
										'</li>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
											'<a data-method="get" href="/"><span>Account Settings</span>'+
											'</a>'+
											'</div>'+
										'</li>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
												'<a data-method="get" href="/"><span>My Guidebook</span>'+
												'</a>'+
												'</div>'+
										'</li>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
											'<a data-method="get" href="/"><span>Bairbnb for work</span>'+
											'</a>'+
											'</div>'+
										'</li>'+
										'<li class="window__list">'+
											'<div class="window__text">'+
											'<a rel="nofollow" data-method="delete" href="/users/sign_out"><span>Logout</span>'+
											'</a>'+
											'</div>'+
										'</li>'+
										'</ul>'+
									'</div>'
	$('#user_icon').on('click', function(){
		$('#user_icon').append(html);
	});

	$(document).click(function(e) {
  if (!$(e.target).closest('#user_icon').length) {
    $('#window').remove();
  }});
})