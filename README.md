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

Add pagy in app/helpers/application_helper.rb
```ruby
module ApplicationHelper
  include Pagy::Frontend
```

## Database

Same as in [blazer-dev](https://github.com/ankane/blazer-dev/blob/master/README.md)
