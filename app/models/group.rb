class Group < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?



include Filterable

  # scope :user, -> (teacher) { where("teacher ILIKE ?", "%#{style}%") }
  scope :city, -> (city) { where("city ILIKE ?", "%#{city}%") }
  scope :structure, -> (structure) { where(structure: structure) }
  scope :style, -> (style) { where(style: style) }
  # scope :min_price, -> (min_price) { where("price < ?", "#{min_price}") }
  # scope :max_price, -> (max_price) { where("price < ?", "#{max_price}") }





end
