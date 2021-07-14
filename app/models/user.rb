class User < ActiveRecord::Base
  # Include default devise modules.
  extend Devise::Models
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :rememberable
  include DeviseTokenAuth::Concerns::User
end
