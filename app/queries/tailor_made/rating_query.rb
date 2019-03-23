module TailorMade
  class RatingQuery < TailorMade::Query
    # creates attr_accessors for dimensions, measures and filters
    include TailorMade::Methods

    def default_dimensions
      fail(NotImplementedError)
    end

    def default_measures
      fail(NotImplementedError)
    end

    def from
      fail(NotImplementedError)
    end
  end
end
