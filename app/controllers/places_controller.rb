class PlacesController < ApplicationController
  def view
    @places = Place.paginate(page: params[:page], per_page: 10)
  end

  def show
    @show = Place.find(params[:id])
  end
end
