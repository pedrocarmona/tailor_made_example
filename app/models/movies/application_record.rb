class Movies::ApplicationRecord < ::ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :movies, reading: :movies }
end
