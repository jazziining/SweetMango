class UserMailer < ApplicationMailer

  def booking_email
    @user = user
    mail(to: 'jasmine.nrh@gmail.com', subject: 'Booking Appointment')
  end

end
