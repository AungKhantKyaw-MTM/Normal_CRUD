    namespace :email do
        desc "Send bulk emails to users"
        task send_bulk: :environment do
            users = User.all
            UserMailer.send_bulk_email(users).deliver_now
            puts "Send eila to #{users.count} users"
        end
    end