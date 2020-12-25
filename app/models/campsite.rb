class Campsite < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_one_attached :image

  validates :name,  presence: true
  validates :text,  presence: true
  validates :image, presence: true
end
