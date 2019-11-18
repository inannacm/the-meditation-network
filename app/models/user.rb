class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :booking
  has_many :reviews
  has_many :groups
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
