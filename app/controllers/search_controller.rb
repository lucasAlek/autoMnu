class SearchController < ApplicationController
  def index
    @search_trems = params[:q]

     @cars = Car.where(make: @search_trems )
    # @cars = Car.where('make LIKE @search_trems OR model LIKE @search'  )
  end
end
