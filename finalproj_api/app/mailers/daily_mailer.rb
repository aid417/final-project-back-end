class DailyMailer < ApplicationMailer
    def new_daily_email
        @user = params[:user]
        mail(to: @user.email, subject: "Daily Digest")
    end
end
