module UserEmailFunctinality
  extend ActiveSupport::Concern

  included do
  	#after_create :send_welcome_email
  end

  def send_welcome_email
  	p "After create new user automaticali send welcome email"
  	UserInvitationMailer.welcome_email(self).deliver_now
  end

end