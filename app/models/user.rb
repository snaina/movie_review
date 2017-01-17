class User < ApplicationRecord
	#ratyrate_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

   # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation
  has_many :movies
  ratyrate_rater 
end



 