class Campsite < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :text, presence: true
end
