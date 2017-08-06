class UsersController < ApplicationController

	def index
		@rooms = Room.all
	end

	# private
	# def create_params
	# 	params.require().permit(:email,:first_name,:last_name,:birthday_month,:birthday_day,:birthday_year)
	# end

end
