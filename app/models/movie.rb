class Movie < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}  
  validates :description, presence: true, length: {maximum: 200}
  validates :year, presence: true, length: {maximum: 4}, numericality: { only_integer: true, greater_than: 1900 }
  has_many :reviews
  has_many_attached :images
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
  has_and_belongs_to_many :tags
end
