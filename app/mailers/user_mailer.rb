class UserMailer < BaseMailer
  def welcome(user_id)
    @user = User.find_by_id(user_id)
    return false if @user.blank?
    mail(:to => @user.email, :subject => "Welcome to Start Up")
  end
end
