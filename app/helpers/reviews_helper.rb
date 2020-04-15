module ReviewsHelper
    def total_rating
        @reviews = Review.all
        
        total = @reviews[:rating].average
        return total
    end
end
