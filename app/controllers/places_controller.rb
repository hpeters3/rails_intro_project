class PlacesController < ApplicationController
  def view
    @places = Place.all
  end

  def show
    @show = Place.find(params[:id])
  end
end
