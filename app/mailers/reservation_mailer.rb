class ReservationMailer < ApplicationMailer
	default from: "from@example.com"

	  def post_email(user,reservation,room,host)
	  	@user = user
	  	@host_name = host.user.first_name
	  	@title = room.name
	  	@location = room.city
	  	@check_in = reservation.data_in
	  	@check_out = reservation.date_out
    	mail to: user.email, subject: "Confirmation of your reservation request"
  end
end
