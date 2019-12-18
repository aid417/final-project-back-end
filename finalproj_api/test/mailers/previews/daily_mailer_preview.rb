# Preview all emails at http://localhost:3000/rails/mailers/daily_mailer
class DailyMailerPreview < ActionMailer::Preview

    def new_daily_email
        @user = User.new(name: "Joe Smith", email: "darcangeloalice@gmail.com",password: "test" ,username:"test" )
    end
end
