namespace :admin do
  desc "Adding User(s)"
    task :add_user => :environment do
      print "How many user(s) do you want to add?"
      num_users = $stdin.gets.to_i
      num_users.times do |i|
        print "user-#{i+1} Full Name: "
        name = $stdin.gets.to_i
        print "user-#{i+1} Email: "

        email = $stdin.gets.to_i

        print "user-#{i+1} password?: "
        password = $stdin.gets.to_i
        User.create(:name => name,
                      :email => email, :password => password)
      end
      print "#{num_users} User(s) added \n"
    end
end
