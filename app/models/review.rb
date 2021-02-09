class Review < ApplicationRecord
  belongs_to :user
  belongs_to :campsite

  validates :score, presence: true
end
