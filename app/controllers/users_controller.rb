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
			redirect_to root_path,method: :get
		end
	end

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
