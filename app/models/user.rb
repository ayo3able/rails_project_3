require 'securerandom'

class User < ApplicationRecord
  has_many :projects
  has_many :teams, through: :projects
  has_many :tasks

  validates_presence_of  :email, :password
  validates_uniqueness_of :email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def self.find_with_omniauth(auth)
            self.find_or_create_by(uid: auth[:uid], email: auth[:email]) do |u|
               u.email = auth[:info][:email]
               u.username auth[:info][:name]
               u.password = SecureRandom.hex(16)
            end
         end

end