class Movie < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}  
  validates :description, presence: true, length: {maximum: 200}
  validates :year, presence: true, length: {maximum: 4}, numericality: { only_integer: true, greater_than: 1900 }
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_many :reviews
end
