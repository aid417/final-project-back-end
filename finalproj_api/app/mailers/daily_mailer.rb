class DailyMailer < ApplicationMailer
    def new_daily_email(user)
        @user = user
        mail(to: @user.email, subject: "Daily Digest")
    end
end
