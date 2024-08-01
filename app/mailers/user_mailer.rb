class UserMailer < ApplicationMailer
  default from: 'user@creator.com'
  def welcome_email
    @user = params[:user]
    @url = 'http://example.com/login'
    attachment_path = Rails.root.join('public', 'silverEarring1.jpg')
    attachments.inline['silverEarring1.jpg'] = File.read(attachment_path)
    mail(to: @user.email, subject: 'Welcome Buddy')
  end                                           #The actual delivery happens when you call deliver_now or deliver_later on this object.

  def signIn_email
    @user=params[:user]
    @url='http://example.com/login'

    # attachments['apple-touch-icon.png'] = File.read('/home/msb/ActionMailerIntroduction/public/apple-touch-icon.png')
   
    # .join('public','apple-touch-icon.png')  -->/home/msb/ActionMailerIntroduction/public/apple-touch-icon.png
    # iss liye itna lamba path likhne k bijaye yeh method adopt karo
    attachment_path=Rails.root  # Rails.root hamay hmare project ka path de ga --> /home/msb/ActionMailerIntroduction
    attachment_path=attachment_path.join('public','silverEarring1.jpg')  #-->/home/msb/ActionMailerIntroduction/public/apple-touch-icon.png

    attachments['silverEarring1.jpg'] = File.read(attachment_path)

    mail(to: @user.email,subject: 'Sign_In Successfully')    
  end
end
