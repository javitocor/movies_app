class Review < ApplicationRecord
    belongs_to :movie
    validates :author, presence: true
    validates :rating, presence: true
    validates :review, presence: true, length: {maximum: 1000}
end
