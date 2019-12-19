desc "Send daily email to users"

task :email_sender => :environment do |_, args|
  User.find_each do |user|
    if user.articles.length > 0
    DailyMailer.new_daily_email(user).deliver
    end
  end
end

