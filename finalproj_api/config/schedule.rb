# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#

#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# set :output, "log/whenever.log"
set :output, "log/cron_log.log"
set :environment, "development"
# ENV[‘RAILS_ENV’] = “production”
# env :PATH, ENV['PATH']

every :day, :at => '5:10 pm' do
    rake "email_sender" 
  end 