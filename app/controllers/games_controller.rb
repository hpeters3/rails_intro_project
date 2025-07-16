class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def menu
    @games = Game.all
  end

  def view
    @games = Game.all
  end

  def show
    @show = Game.find(params[:id])
  end
end
