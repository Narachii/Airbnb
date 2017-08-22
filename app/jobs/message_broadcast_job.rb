class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
		ActionCable.server.broadcast 'message_channel', message: render_message(message)
  end

  private
    def render_message(message)
    	current_user_id = $current_user
	    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message,user_id:  current_user_id })
  	end
end
