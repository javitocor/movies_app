class Movie < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}  
  validates :description, presence: true, length: {maximum: 200}
  validates :year, presence: true, length: {maximum: 4}, numericality: { only_integer: true, greater_than: 1900 }
  has_many :reviews
  has_many_attached :images
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
  has_and_belongs_to_many :tags
  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
  def tag_list
    self.tags.collect do |tag|
    tag.name
    end.join(", ")
  end
  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
