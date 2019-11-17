class Session < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :reviews
end
