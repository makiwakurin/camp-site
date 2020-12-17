class Campsite < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true
end
