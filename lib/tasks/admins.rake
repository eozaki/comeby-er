namespace :admins do
  desc 'Creates a new admin.\n Usage: rake admins:create[username, password]'
  task create: :environment do |task, args|
    username = ENV['USERNAME']
    password = ENV['PASSWORD']
    puts Admin.create!(username: username, password: password, email: username).persisted?
  end
end
