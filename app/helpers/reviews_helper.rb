module ReviewsHelper
	def total_rating(id)
    reviews = Review.select(:rating).where(movie_id: id)
    return render html: 'No rating yet' if reviews.empty?

		total = []
		reviews.each do |x|
      total << x[:rating]
    end
    avg = (total.sum / total.count).round(1)
    render html: "User's rating: #{avg}"
  end
end

