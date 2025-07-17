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

  def search
    @search = params[:query]
    @category = params[:category]

    if @search.present? and @category == "Games"
      @results = Game.where("name LIKE ? OR description LIKE ? OR developer LIKE ? OR publisher LIKE ? OR released_date LIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

    elsif @search.present? and @category == "Characters"
      @results = Character.where("name LIKE ? OR description LIKE ? OR gender LIKE ? OR race LIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

    elsif @search.present? and @category == "Places"
      @results = Place.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")

    elsif @search.present? and @category == "Monsters"
      @results = Monster.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")

    elsif @search.present? and @category == "Bosses"
      @results = Boss.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")

    elsif @search.present? and @category == "Everything"
      @result = []

      @results = Game.where("name LIKE ? OR description LIKE ? OR developer LIKE ? OR publisher LIKE ? OR released_date LIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")
      @results += Character.where("name LIKE ? OR description LIKE ? OR gender LIKE ? OR race LIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")
      @results += Place.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")
      @results += Monster.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")
      @results += Boss.where("name LIKE ? OR description LIKE ?", "%#{@search}%", "%#{@search}%")
    else
      @results = []
    end
  end
end
