# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_me
  def contact_me
    message = Message.new name: 'Jasmine',
                          email: 'jasmine.nrh@gmail.com',
                          ideal_date_time: 'Monday',
                          services: 'full face',
                          note: 'does it hurt'

    MessageMailer.contact_me message
  end

end
