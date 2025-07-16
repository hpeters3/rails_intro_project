class BossesController < ApplicationController
  def view
    @bosses = Boss.all
  end

  def show
    @show = Boss.find(params[:id])
  end
end
