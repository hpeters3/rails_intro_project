class BossesController < ApplicationController
  def view
    @bosses = Boss.paginate(page: params[:page], per_page: 10)
  end

  def show
    @show = Boss.find(params[:id])
  end
end
