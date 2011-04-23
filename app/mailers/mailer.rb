class Mailer < ActionMailer::Base

  default :from => "mothership@alien8labs.com"


  def contact_request(contact)
    mail :from    => contact.email, 
         :to      => 'mothership@alien8labs.com', 
         :subject => 'Hire Us Request'
  end
end
