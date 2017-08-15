class ReservationMailer < ApplicationMailer
	default from: "from@example.com"

	  def post_email(user,reservation,room,host)
  		@reservation = reservation
	  	@user = user
	  	@host_name = host.user.first_name
	  	@title = room.name
	  	@location = room.city
	  	@check_in = reservation.data_in
	  	@check_out = reservation.date_out
	  	stay_date = @check_out - @check_in
	  	@stay = stay_date.to_i
	  	@price = reservation.guest * room.price * @stay
    	mail to: user.email, subject: "Confirmation of your reservation request"
  end

  def post_email_to_host(user,reservation,room,host)
  		@reservation = reservation
  		@user = user
	  	@host_name = host.user.first_name
	  	@title = room.name
	  	@location = room.city
	  	@check_in = reservation.data_in
	  	@check_out = reservation.date_out
	  	stay_date = @check_out - @check_in
	  	@stay = stay_date.to_i
	  	@price = reservation.guest * room.price * @stay
  		mail to: host.user.email, subject: "Reservation request from #{@check_in} to #{@check_out}"
  end
end
