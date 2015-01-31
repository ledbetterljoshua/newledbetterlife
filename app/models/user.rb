class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :about_mes
         has_many :contacts
         has_many :bannerimages
         has_many :photos
         has_many :profile_images
         has_many :posts
         has_many :socials

end
