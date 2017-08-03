class HostsController < ApplicationController

	def index
		@room = current_user.host.rooms.find_by(progress: false)
	end

	def show
			@room = current_user.host.rooms.find_by(progress: false)
	end

	def create
		host = Host.create(create_params)
		redirect_to controller: 'rooms', action: 'index'
	end

	def create_params
		params.permit(:user_id)
	end
end
