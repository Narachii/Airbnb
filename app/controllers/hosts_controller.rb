class HostsController < ApplicationController

	def index
	end

	def show
	end

	def create
		host = Host.create(create_params)
		redirect_to controller: 'rooms', action: 'index'
	end

	def create_params
		params.permit(:user_id)
	end
end
