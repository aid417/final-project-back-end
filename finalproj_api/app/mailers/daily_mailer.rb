class DailyMailer < ApplicationMailer
    def new_daily_email
        @user = params[:user]
        mail(to: @user.email, subject: "You're a new user!")
    end
end
