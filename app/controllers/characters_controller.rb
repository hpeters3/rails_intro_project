class CharactersController < ApplicationController
  def view
    @characters = Character.all
  end

  def show
    @show = Character.find(params[:id])
  end
end
