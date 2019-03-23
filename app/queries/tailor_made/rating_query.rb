module TailorMade
  class RatingQuery < TailorMade::Query
    # creates attr_accessors for dimensions, measures and filters
    include TailorMade::Methods

    dimension :movie_id
    datetime_dimension :rated_at

    measure :average_rating, formula: "AVG(rating)"
    measure :rating_count, formula: "COUNT(rating)"

    def default_dimensions
      [:rated_at_week]
    end

    def default_measures
      [:rating_count, :average_rating]
    end

    def initialize(attributes={})
      super
      @chart ||= :line_chart
    end

    def from
      Movies::Rating.all
    end
  end
end
