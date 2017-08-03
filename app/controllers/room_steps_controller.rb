class RoomStepsController < ApplicationController
	include Wicked::Wizard
	steps :room, :bedrooms, :bed_details, :bathrooms , :locations, :amenities, :spaces,:image, :title, :description,:profile_photo,:phone,:home
# :image,:description,:title,:phone,:profile_photo

	def show
		@room = Room.find(params[:room_id])
		@user = current_user
		render_wizard
	end

	def update
		case wizard_value(step)
			when :spaces
				@room = Room.find(params[:room_id])
				@room.update(room_params)
				redirect_to wizard_path(:home)
			when :profile_photo
				@user = current_user
				@user.update(user_params)
				render_wizard @user
			when :phone
				@user = current_user
				@user.update(user_params)
				@room = Room.find(params[:room_id])
				@room.update(progress: 1)
				redirect_to wizard_path(:home)
			else
				@room = Room.find(params[:room_id])
				@room.update(room_params)
				render_wizard @room
		end
	end

	# def finish_wizard_path
	# 	@room = Room.find(params[:room_id])
	# 	binding.pry
	# 	@room.update(update_params)
	# 	render_wizard @room
	# 	user_host_path
	# end

	private

	def room_params
		params.require(:room).permit(:place_type,:property_type,:room_type,:bedroom,:country,:zipcode,:state,:city,:street_address,:optional,:image,:name, :description,:progress,amenity_ids:[],space_ids:[])
	end

	def user_params
		params.require(:user).permit(:image,:phone_number,:progress)
	end
end
