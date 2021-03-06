module TailorMade
  class RatingsController < ApplicationController
    include Pagy::Backend

    before_action :set_query

    def index
      @pagy, @records = pagy(@query.all)
    end

    private

    def set_query
      @query = RatingQuery.new(query_params)
    end

    def query_params
      return {} if params[:q].nil?
      params[:q].permit(TailorMade::RatingQuery.permitted_attributes)
    end
  end
end
