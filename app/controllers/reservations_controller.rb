class ReservationsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

def create
	@user = current_user
	@room = Room.find(params[:room_id])
	@host = @room.host
	@reservation = Reservation.new(reservation_params)
	respond_to do |format|
	if @reservation.save
		@user = current_user
		ReservationMailer.post_email(@user,@reservation,@room,@host).deliver
 		format.html { redirect_to root_path, notice: 'User was successfully created.'}
		format.json { render :index, status: :created, location: @user }
	else
		format.html { render :show }
		format.json { render json: @reservation.errors, status: :unprocessable_entity }
	end
end
end

private
	def reservation_params
		params.require(:reservation).permit(:data_in,:date_out,:guest).merge(user_id: current_user.id, room_id: params[:room_id])
	end
end
