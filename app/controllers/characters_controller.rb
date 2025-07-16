class CharactersController < ApplicationController
  def view
    @characters = Character.paginate(page: params[:page], per_page: 10)
  end

  def show
    @show = Character.find(params[:id])
  end
end
