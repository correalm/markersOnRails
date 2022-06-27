namespace :dev do
  desc "Configure the development DB"
  task setup: :environment do
    if Rails.env.development?
      %x(rails db:drop db:create db:migrate db:seed)
      puts "✔️ Successful"
    else
      puts "Need development enviroment."
    end
  end

end
