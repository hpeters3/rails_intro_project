class MonstersController < ApplicationController
  def view
    @monsters = Monster.all
  end

  def show
    @show = Monster.find(params[:id])
  end
end
