class UsersController < ApplicationController
before_action :authenticate_user!, :except => [:show, :index]

	def index
		@rooms = Room.all
	end

	def edit
		@user = current_user
	end

	def update
		@user = User.find(params[:id])
		if current_user.id = @user.id
			@user.update(user_params)
			redirect_to edit_user_path(@user),method: :get,notice: 'Profile Updated Successfully'
		end
	end

	# def delete

	# end

	def show
		@user = User.find(params[:id] )
		month = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		user_month = @user[:created_at].month - 1
		@month = month[user_month]
		@year =@user[:created_at].year
	end

	def inbox
		@user = current_user
		@messages = Message.all
		if current_user.host.presence
			@rooms = current_user.host.rooms
		end
		if current_user.reservations.presence
			@reservations = Reservation.where(user_id: current_user.id)
		end
	end

	def host_inbox
		if current_user.host.presence
			@rooms = current_user.host.rooms
			@reservations = Reservation.where(user_id: current_user.id)
		end
	end

	def media
		@user = current_user
	end

 private
 def user_params
 	params.require(:user).permit(:email,
 		:gender,
 		:phone_number,
 		:language,
 		:currency,
 		:location,
 		:text,
 		:first_name,
 		:last_name,
 		:last_name,
 		:birthday_month,
 		:birthday_day,
 		:birthday_year,
 		:image)
 end

end
