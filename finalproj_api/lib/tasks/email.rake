desc "Send daily email to users"

task :email_sender => :environment do |_, args|
  User.find_each do |user|
    DailyMailer.new_daily_email(user).deliver
  end
end

