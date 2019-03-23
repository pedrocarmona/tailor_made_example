module TailorMade
  class RatingQuery < TailorMade::Query
    # creates attr_accessors for dimensions, measures and filters
    include TailorMade::Methods

    dimension :movie_id
    datetime_dimension :rated_at

    measure :average_rating, formula: "AVG(rating)"

    def default_dimensions
      [:movie_id]
    end

    def default_measures
      [:average_rating]
    end

    def from
      Movies::Rating.all
    end
  end
end
