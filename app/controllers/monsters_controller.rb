class MonstersController < ApplicationController
  def view
    @monsters = Monster.paginate(page: params[:page], per_page: 10)
  end

  def show
    @show = Monster.find(params[:id])
  end
end
