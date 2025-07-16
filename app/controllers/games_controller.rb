class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def menu
    @games = Game.all
  end

  def view
    @games = Game.paginate(page: params[:page], per_page: 10)
  end

  def show
    @show = Game.find(params[:id])
  end
end
