class User < ApplicationRecord
  has_many :campsites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  has_many :likes
  
  def liked_by?(campsite_id)
    likes.where(campsite_id: campsite_id).exists?
  end
end
