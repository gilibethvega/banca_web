class MyMailer < ApplicationMailer
    default :from => "no-reply@bancafriendly.cl"
      
    def my_first_email(user)
        @user = user
        mail(:to => @user.email, subject: 'Ya eres #FriendlyPro')
    end
end
