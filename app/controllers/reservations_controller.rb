class ReservationsController < ApplicationController
before_action :authenticate_user!

def show
@reservation = Reservation.find(params[:id])
@messages = @reservation.messages
@message = Message.new
	if user_signed_in?
		$current_user = current_user.id
	end
end

  def destroy
    reservation = Reservation.find(params[:id])
	if reservation.room.host.user_id == current_user.id
    messages = reservation.messages
    messages.destroy_all
    reservation.destroy
    redirect_to host_inbox_users_path
  end
end

def update
	# if
	@reservation = Reservation.find(params[:id])
	if current_user.host.id == @reservation.room.host_id
		@reservation.update(accept_params)
			redirect_to reservation_path(@reservation)
  #   respond_to do |format|
  #   format.html {redirect_to index_path}
  #   format.json
   end
end

def create
	@user = current_user
	@room = Room.find(params[:room_id])
	@host = @room.host
	@reservation = Reservation.new(reservation_params)
	respond_to do |format|
	if @reservation.save
		@user = current_user
		ReservationMailer.post_email(@user,@reservation,@room,@host).deliver
		ReservationMailer.post_email_to_host(@user,@reservation,@room,@host).deliver
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

	def accept_params
		params.require(:reservation).permit(:acceptance)
	end

end
