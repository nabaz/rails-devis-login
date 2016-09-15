namespace :db do
  desc "Add Test User"
  task seed: :environment do
    user_properties = [
      {
        name: "User1",
        password: "password",
        password_confirmation: "password",
        email: "user1@example.com",
      },
      {
        name: "User2",
        password: "password",
        password_confirmation: "password",
        email: "user2@example.com",
      },
    ]

    user_properties.each { |u| User.create! u }


  end
  task useradd: [:seed]
end
