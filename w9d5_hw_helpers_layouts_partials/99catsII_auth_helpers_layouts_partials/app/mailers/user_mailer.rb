class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    ail(to: user.email, subject: 'Welcome to 99 Cats!')
  end
  
end
