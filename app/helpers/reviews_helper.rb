module ReviewsHelper
    def total_rating(id)
        reviews = Review.all 
        total = []
        reviews.each do |x|
            if x[:movie_id] == id
                total.push(x[:rating])
            end
        end
        if total != nil && total != []
            aver = (total.reduce(:+) / total.size).round(1)
        else
            p 'No rating yet'
        end   
    end
end

