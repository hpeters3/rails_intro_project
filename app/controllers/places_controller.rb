class PlacesController < ApplicationController
  def view
    @places = Place.all
  end
end
