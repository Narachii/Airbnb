class RoomsController < ApplicationController

	def index
	end

	def room
		@room = Room.new(host_id: current_user.host.id)
	end

	def create
		@room = Room.new(host_id: current_user.host.id)
		@room.save
		@user = current_user
		@user.update(progress: 1)
		redirect_to user_host_room_room_steps_path(room_id: @room.id)
	end

	def show
		@rooms = Room.all
		@room = Room.find(params[:id])
		@host = @room.host.user
		@hash = Gmaps4rails.build_markers(@room) do |room,marker|
  		marker.lat room.lattitude
  		marker.lng room.longitude
  	@reservation = Reservation.new
		end
	end

	# def bathrooms
	# end

	# def locations
	# 	@room = Room.new
	# end

	# def amenities
	# 	@room = Room.new
	# end

	# def spaces
	# 	@room = Room.new
	# end

	# def image
	# 	@room = Room.new
	# end

	# def description
	# 	@room = Room.new
	# end

	# def profile_photo
	# 	@room = Room.new
	# end

	# def title
	# 	@room = Room.new
	# end

	# def phone
	# 	@room= Room.new
	# end

end
