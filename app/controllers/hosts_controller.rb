class HostsController < ApplicationController

	def index
		if current_user.host.present?
			@room = current_user.host.rooms.find_by(progress: false)
		end
	end

	def show
			if current_user.host.present?
				@room = current_user.host.rooms.find_by(progress: false)
			end
	end

	def create
		host = Host.create(create_params)
		redirect_to user_host_path(id: current_user.host.id)
	end

	def create_params
		params.permit(:user_id)
	end
end
