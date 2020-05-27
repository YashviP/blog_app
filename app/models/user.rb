class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
	number_regex = /\d[0-9]\)*\z/
  	validates :first_name,presence: true,  format: { :with => /^[A-Za-z]*$/ , message: "can only contain letters" , :multiline => true}
  	validates :last_name,presence: true,  format: { :with => /^[a-zA-Z]+$/ , message: "can only contain letters" , :multiline => true}
  	validates :mobile_number,:presence => true,format: {:with => /^[^0-1][0-9]{9}$/ ,:multiline => true };
  	#The provided regular expression is using multiline anchors (^ or $), which may present a security risk. Did you mean to use \A and \z, or forgot to add the :multiline => true option?
                 
  	validates :email ,format: { with: URI::MailTo::EMAIL_REGEXP } 

  	

end
