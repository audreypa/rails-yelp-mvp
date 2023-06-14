class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }

  def average_rating
    if reviews.count.positive?
      reviews.average(:rating).to_i
    else
      'no reviews yet'
    end
  end
end
