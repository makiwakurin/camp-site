class Like < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  validates_uniqueness_of :campsite_id, scope: :user_id
end
