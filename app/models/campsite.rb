class Campsite < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :prefecture
  belongs_to :status
  belongs_to :user
  has_one_attached :image

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  validates :name,  presence: true
  validates :text,  presence: true
  validates :image, presence: true

  validates :genre_id, :prefecture_id, :status_id,  numericality: { other_than: 0 } 

  def self.search(search)
    if search != ""
      Campsite.where('text Like(?)', "%#{search}%")
    else
      Campsite.all
    end
  end

  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
