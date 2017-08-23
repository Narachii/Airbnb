class MessagesController < ApplicationController
before_action :authenticate_user!

def index
	@messages = Message.all
	@user = current_user
	@message = Message.new
	if user_signed_in?
		$current_user = current_user.id
	end
end

def show
	@messages = Message.all
end

def create
	message = Message.new(create_params)
	message.save
end

private
def create_params
	params.require(:message).permit(:user_id, :body)
end

end
