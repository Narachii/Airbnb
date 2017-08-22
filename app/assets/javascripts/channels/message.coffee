App.message = App.cable.subscriptions.create "MessageChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	$ ->
  		user_id = $('.current_user_id').val();
			user = parseInt(user_id)
			html = data['message']
			id = html.match(/\n\d+\n/)[0].replace(/\n/,"")
			id = parseInt(id)
			console.log(a)
			if user is id
				$('#messages').append html
			else
				c_html1 = html.replace(/temp__face/,"opponent__face")
				c_html2 = c_html1.replace(/temp__name/,"opponent__name")
				c_html3 = c_html2.replace(/temp__hukidashi/,"opponent__hukidashi")
				$('#messages').append c_html3
			$('#messages').animate({scrollTop: $('#messages')[0].scrollHeight});
    # Called when there's incoming data on the websocket for this channel

#   speak: (message) ->
#     @perform 'speak', message: message

# $(document).on 'keypress', '[data-behavior~=message_speaker]', (event) ->
#   if event.keyCode is 13 # return = send
#     App.message.speak event.target.value
#     id = $('.current_user_id').val();
#     # console.log(id)
#     event.target.value = ''
#     event.preventDefault()