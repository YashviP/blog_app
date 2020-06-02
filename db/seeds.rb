# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  user = User.new(

  	  :first_name => "manav",
  	  :last_name => "patel",
  	  :mobile_number => "9582342622",
  	  :gender => 0,
  	  :birth_date => "1920-05-28",
      :email                 => "manavpatel@gmail.com",
      :password              => "manavpatel",
      :password_confirmation => "manavpatel"
  )
  user.save!


