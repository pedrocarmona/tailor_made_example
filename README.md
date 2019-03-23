# README

## Build from scratch

1. Install rails 6.

2. Generate application

```
  $ rails new tailor_made_example -d postgresql -m https://raw.githubusercontent.com/excid3/jumpstart/master/template.rb
```

3. Follow blazer gems steps

4. Add tailor_made

Follow tailor_made Installation steps with webpacker.

```
  $ bin/rails g tailor_made:dashboard Rating
```

Add to the routes file:
```ruby
namespace :tailor_made do
  resources :ratings, only: [:index]
end
```

Adjust `/app/queries/tailor_made/rating_query.rb`

```ruby

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

```
## Database

Same as in [blazer-dev](https://github.com/ankane/blazer-dev/blob/master/README.md)
